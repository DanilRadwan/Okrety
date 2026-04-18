<include __DIR__ . '/../db.php';>

<h2>Wyszukaj okręt</h2>

<form method="GET">
    <input type="text" name="q" placeholder="Nazwa okrętu">
    <button type="submit">Szukaj</button>
</form>

<?php
if(isset($_GET['q'])) {
    $q = $_GET['q'];

    $sql = "SELECT * FROM okrety WHERE nazwa LIKE '%$q%'";
    $result = $conn->query($sql);

    while($row = $result->fetch_assoc()) {
        echo "<p>
        <a href='index.php?id=szczegoly&id_okretu={$row['id_okretu']}'>
        {$row['nazwa']}
        </a>
        </p>";
    }
}
?>