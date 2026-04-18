<?php
include __DIR__ . '/../db.php';
?>

<h2>Dodaj okręt</h2>

<form method="POST">
    <label>Nazwa:</label><br>
    <input type="text" name="nazwa" required><br><br>

    <label>Typ:</label><br>
    <input type="text" name="typ" required><br><br>

    <label>Rok:</label><br>
    <input type="number" name="rok" required><br><br>

    <button type="submit">Dodaj</button>
</form>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $nazwa = $_POST['nazwa'];
    $typ = $_POST['typ'];
    $rok = $_POST['rok'];

    $sql = "INSERT INTO okrety (nazwa, typ, rok_zbudowania)
            VALUES ('$nazwa', '$typ', $rok)";

    if ($conn->query($sql)) {
        echo "<p style='color:green;'>Dodano okręt!</p>";
    } else {
        echo "<p style='color:red;'>Błąd: " . $conn->error . "</p>";
    }
}
?>