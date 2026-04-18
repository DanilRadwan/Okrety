<?php
include __DIR__ . '/../db.php';

$sql = "SELECT o.id_okretu, o.nazwa, o.typ, o.rok_zbudowania,
               k.klasa, k.kraj
        FROM okrety o
        JOIN klasy_okretow k ON o.typ = k.typ";

$result = $conn->query($sql);

echo "<h2>Lista okrętów</h2>";

echo "<table>";
echo "<tr>
<th>ID</th>
<th>Nazwa</th>
<th>Typ</th>
<th>Rok</th>
<th>Klasa</th>
<th>Kraj</th>
<th>Akcje</th>
</tr>";

while($row = $result->fetch_assoc()) {
    echo "<tr>
    <td>{$row['id_okretu']}</td>
    <td>{$row['nazwa']}</td>
    <td>{$row['typ']}</td>
    <td>{$row['rok_zbudowania']}</td>
    <td>{$row['klasa']}</td>
    <td>{$row['kraj']}</td>
    <td>
        <a href='index.php?id=szczegoly&id_okretu={$row['id_okretu']}'>Szczegóły</a> |
        <a href='index.php?id=usun&id={$row['id_okretu']}' onclick=\"return confirm('Na pewno usunąć?')\">Usuń</a>
    </td>
    </tr>";
}

echo "</table>";
?>