<?php
include '../db.php';

$id = $_GET['id_okretu'];

$sql = "SELECT * FROM okrety WHERE id_okretu=$id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
?>

<h2><?= $row['nazwa'] ?></h2>

<p>Typ: <?= $row['typ'] ?></p>
<p>Rok: <?= $row['rok_zbudowania'] ?></p>