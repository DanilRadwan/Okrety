<?php
$conn = new mysqli("localhost", "root", "", "okrety_db");

if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}
?>