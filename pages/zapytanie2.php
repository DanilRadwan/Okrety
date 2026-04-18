<?php
include '../db.php';

$sql = "SELECT k.typ, k.kraj, COUNT(o.id_okretu) AS liczba
        FROM klasy_okretow k
        JOIN okrety o ON k.typ = o.typ
        GROUP BY k.typ, k.kraj
        ORDER BY liczba DESC";

$result = $conn->query($sql);

echo "<table><tr><th>Typ</th><th>Kraj</th><th>Liczba</th></tr>";

while($row = $result->fetch_assoc()) {
    echo "<tr>
        <td>{$row['typ']}</td>
        <td>{$row['kraj']}</td>
        <td>{$row['liczba']}</td>
    </tr>";
}

echo "</table>";
?>