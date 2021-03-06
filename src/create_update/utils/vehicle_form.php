Model <br><select name="model_id">
    <?php
    $model_query = oci_parse($connection, 'SELECT m.*, e.VOLUME, e.POWER, g.TYPE, g.COUNT, b.NAME AS BRAND_NAME 
                                                FROM MODEL m, ENGINE e, GEAR g, BRAND b 
                                                WHERE M.ENGINE_ID = E.ID AND m.GEAR_ID = G.ID AND m.BRAND_ID = b.ID AND m.VEHICLE_TYPE = :vehicle_type');
    oci_bind_by_name($model_query, ':vehicle_type', $vehicle_type);
    oci_execute($model_query);

    while ($row = oci_fetch_array($model_query, OCI_ASSOC + OCI_RETURN_NULLS)) {
        if (isset($_GET['id']) and $row['ID'] == $vehicle['MODEL_ID']) {
            echo "<option selected='selected' value='" . $row['ID'] . "'>".$row['BRAND_NAME']." - ".$row['NAME']." - Fuel: ".$row['FUEL_TYPE']." - Engine: ".$row['VOLUME']." ".$row['POWER']." - Gear: ".$row['TYPE']." ".$row['COUNT']."</option>";
        } else {
            echo "<option value='" . $row['ID'] . "'>".$row['BRAND_NAME']." - ".$row['NAME']." - Fuel: ".$row['FUEL_TYPE']." - Engine: ".$row['VOLUME']." ".$row['POWER']." - Gear: ".$row['TYPE']." ".$row['COUNT']."</option>";
        }
    }
    ?>
</select><br><br>

Plate <br>
<input type="text" name="plate" value="<?php echo $vehicle['PLATE']; ?>" required><br><br>

Kilometer <br>
<input type="number" name="kilometer" value="<?php echo $vehicle['KILOMETER']; ?>"><br><br>

Year <br>
<input type="number" name="year" min="1900" max="<?php echo (date("Y") + 1); ?>"
       value="<?php echo $vehicle['YEAR']; ?>"><br><br>

Image <br>
<input type="file" name="vehicle_image"><br><br>