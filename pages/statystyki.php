<?php
include __DIR__ . '/../db.php';

$sql = "SELECT kraj, COUNT(*) as liczba
        FROM klasy_okretow k
        JOIN okrety o ON k.typ = o.typ
        GROUP BY kraj";

$result = $conn->query($sql);

echo "<h2>Statystyki</h2>";

while($row = $result->fetch_assoc()) {
    echo "{$row['kraj']} - {$row['liczba']} okrętów<br>";
}
?>