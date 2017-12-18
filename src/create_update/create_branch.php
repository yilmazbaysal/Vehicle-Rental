<?php
include "../common.php";
include "../connection.php";
include "../authentication/admin_user_required.php";

# If an Id provided from the URL, update its values
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    # Fetch BRANCH instance
    $item_query = oci_parse($connection, "SELECT * FROM BRANCH WHERE ID = $id");
    oci_execute($item_query);

    $item = oci_fetch_array($item_query, OCI_ASSOC + OCI_RETURN_NULLS);

    # Fetch BRANCH_RLTD_USER instance
    $branch_rltd_user_query = oci_parse($connection, "SELECT * FROM BRANCH_RLTD_USER WHERE BRANCH_ID = $id");
    oci_execute(($branch_rltd_user_query));

    $branch_rltd_user = oci_fetch_array($branch_rltd_user_query, OCI_ASSOC + OCI_RETURN_NULLS);
}
?>

    <html>
    <body>

    <center>
        <h1>Branch</h1>

        <form action="create_branch.php" method="post">
            County <br><select name="county_id">
                <?php
                $county_query = oci_parse($connection, 'SELECT * FROM COUNTY');
                oci_execute($county_query);

                while ($row = oci_fetch_array($county_query, OCI_ASSOC + OCI_RETURN_NULLS)) {
                    if (isset($_GET['id']) and $row['ID'] == $item['COUNTY_ID']) {
                        echo "<option selected='selected' value='" . $row['ID'] . "'>" . $row['NAME'] . "</option>";
                    } else {
                        echo "<option value='" . $row['ID'] . "'>" . $row['NAME'] . "</option>";
                    }
                }
                ?>
            </select><br><br>

            Branch <br>
            <input type="text" name="branch_name" value="<?php echo htmlspecialchars($item['NAME']); ?>"><br><br>

            User <br><select name="user_id">
                <?php
                $user_query = oci_parse($connection, 'SELECT * FROM "USER"');
                oci_execute($user_query);

                while ($row = oci_fetch_array($user_query, OCI_ASSOC + OCI_RETURN_NULLS)) {
                    if (isset($_GET['id']) and $row['ID'] == $branch_rltd_user['USER_ID']) {
                        echo "<option selected='selected' value='" . $row['ID'] . "'>" . $row['USERNAME'] . "</option>";
                    } else {
                        echo "<option value='" . $row['ID'] . "'>" . $row['USERNAME'] . "</option>";
                    }
                }
                ?>
            </select><br><br>

            <input style="display: none" type="text" name="id" value="<?php echo $item['ID']; ?>">
            <input type="submit" name="submit">
        </form>
    </center>

    </body>
    </html>

<?php
if (isset($_POST['submit'])) {
    if ($_POST['id']) {
        $item_save_sql = oci_parse($connection, '
            BEGIN
                UPDATE_BRANCH(:branch_id, :name, :county_id);
                UPDATE_BRANCH_RLTD_USER(:branch_id, :user_id);
                UPDATE B21327694."USER" SET USER_TYPE_ID = :user_type WHERE ID = :user_id;
                COMMIT;
            END;'
        );

        oci_bind_by_name($item_save_sql, ":branch_id", $_POST['id']);
    } else {
        $item_save_sql = oci_parse($connection, '
            DECLARE
                returned_branch_id NUMBER;
            BEGIN
                INSERT_BRANCH(:name, :county_id, returned_branch_id);
                INSERT_BRANCH_RLTD_USER(returned_branch_id, :user_id);
                UPDATE B21327694."USER" SET USER_TYPE_ID = :user_type WHERE ID = :user_id;
                COMMIT;
            END;'
        );
    }

    # Add arguments
    oci_bind_by_name($item_save_sql, ":name", $_POST['branch_name']);
    oci_bind_by_name($item_save_sql, ":county_id", $_POST['county_id']);
    oci_bind_by_name($item_save_sql, ":user_id", $_POST['user_id']);
    oci_bind_by_name($item_save_sql, ":user_type", $USER_TYPE_BRANCH);

    oci_execute($item_save_sql);
}
?>