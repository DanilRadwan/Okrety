<?php
include '../db.php';

$sql = "SELECT typ, MIN(rok_zbudowania) AS pierwszy_rok
        FROM okrety
        WHERE rok_zbudowania > 1920
        GROUP BY typ";

$result = $conn->query($sql);

echo "<table><tr><th>Typ</th><th>Pierwszy rok</th></tr>";

while($row = $result->fetch_assoc()) {
    echo "<tr>
        <td>{$row['typ']}</td>
        <td>{$row['pierwszy_rok']}</td>
    </tr>";
}

echo "</table>";
?>