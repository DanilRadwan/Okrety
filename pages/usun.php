<?php
include __DIR__ . '/../db.php';

$id = $_GET['id'];

$conn->query("DELETE FROM okrety WHERE id_okretu=$id");

header("Location: index.php?id=lista");
?>