<?php
    if(isset($_GET["user"]) && !empty($_GET["user"])) {
        echo "Hello, " . $_GET["user"] . "!";
    } else {
        echo "Hello, Guest!";
    }
?>
