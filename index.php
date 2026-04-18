<?php
$page = $_GET['id'] ?? 'home';
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Okręty</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header>
    <h1>Okręty wojenne</h1>
</header>

<div class="container">

    <aside>
        <a href="index.php?id=home">Strona główna</a>
        <a href="index.php?id=lista">Lista okrętów</a>
        <a href="index.php?id=szukaj">Szukaj</a>
        <a href="index.php?id=dodaj">Dodaj okręt</a>
        <a href="index.php?id=statystyki">Statystyki</a>
    </aside>

    <main>
        <?php
        switch($page) {
            case 'lista':
                include 'pages/lista_okretow.php';
                break;

            case 'szczegoly':
                include 'pages/szczegoly.php';
                break;

            case 'dodaj':
                include 'pages/dodaj.php';
                break;

            case 'usun':
                include 'pages/usun.php';
                break;

            case 'szukaj':
                include 'pages/szukaj.php';
                break;

            case 'statystyki':
                include 'pages/statystyki.php';
                break;

            default:
                include 'pages/home.php';
        }
        ?>
    </main>

</div>

<footer>
    <p>Projekt PHP + MySQL</p>
</footer>

</body>
</html>