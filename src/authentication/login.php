<?php
include "../common.php";
?>

    <html>
    <body>
    <center>
        <h1>Login</h1> <br> <br>

        <div class="login-form-container">
            <form class="login-form" action="login.php" method="post">
                <label>Username</label><br>
                <input type="text" name="username" required><br><br>

                <label>Password</label><br>
                <input type="password" name="password" required><br><br>

                <input type="submit" name="submit" value="Login">
            </form>

            <br>

            <form class="login-register-button" action="user_register.php" method="post">
                <input type="submit" style="color: #ff6600" value="Register">
            </form>
        </div>
    </center>

    </body>
    </html>

<?php

if (isset($_POST['submit'])) {

    $get_user_sql = oci_parse($connection,
        'SELECT * FROM "USER" WHERE username = :username'
    );
    oci_bind_by_name($get_user_sql, ":username", $_POST['username']);

    // Execute the SQL code
    oci_execute($get_user_sql);

    // Get the user
    $user = oci_fetch_array($get_user_sql, OCI_ASSOC + OCI_RETURN_NULLS);

    // Password control
    if (!is_null($user) and md5($_POST['password']) == $user['PASSWORD']) {
        echo "<center><p style='color: green'>You have successfully logged in.</p></center>";

        // Save user data under the session
        session_start();
        $_SESSION['user_type'] = $user['USER_TYPE'];
        $_SESSION['user_id'] = $user['ID'];
        $_SESSION['username'] = $user['USERNAME'];

        create_user_log('Logged in to the website.');
        // Redirect to home page
        header("Location: /index.php");
        exit();
    } else {
        echo "<center><p style='color: red'>Incorrect username password combination!</p></center>";
    }

}
?>