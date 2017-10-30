<?php
header("Content-type:application/json");

session_start();

try {
    $conn = new PDO("mysql:host=localhost;dbname=dice;charset=utf8", "root", "");
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if(isset($_POST['result']) && isset($_SESSION['username']) ) {
        $statement = $conn->prepare("INSERT INTO stat (user, result) VALUES (:user, :result)");
        $statement->bindParam(":user", $_SESSION['username']);
        $statement->bindParam(":result", $_POST['result']);
        $statement->execute();
        $response['message'] = ['type' => 'success','body' => 'Win was added'];

    } elseif (isset($_GET['my'])) {

        $statement = $conn->prepare("SELECT * FROM stat WHERE user = :user");
        $statement->bindParam(":user", $_SESSION['username']);
        $statement->execute();
        $response['result'] = $statement->fetchAll(PDO::FETCH_ASSOC);
    }
    $conn = null;
} catch(PDOException $e) {
    $response['message'] = ['type' => 'danger','body' => $e->getMessage()];
}
echo json_encode($response);