    <?php
    include ("config.php");
    session_start();
    ?>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

        <body>
            <div class="container">
            <h2>Admin Login</h2>   
            <hr>     
            <form action="#" method="get">
                <label for="username">Kasutajanimi:</label>
                <input type="text" name="username" id="username" required><br>
                <label for="parool">Admin parool:</label>
                <input type="password" name="parool" id="parool" required><br>
                <input type="submit" class="btn btn-success my-2" value="Login">
            </form>

            <?php
            if(!empty($_GET['parool']) && !empty($_GET['username'])){
                $username = htmlspecialchars($_GET["username"]);
                $parool = htmlspecialchars($_GET["parool"]);

                $sql = "SELECT parool FROM kasutajad WHERE kasutaja = '$username'";     
                $result = $yhendus->query($sql);

                if($result->num_rows > 0){
                    $row = $result->fetch_assoc();
                    $hashed = $row['parool'];

                    if(password_verify($parool, $hashed)){
                        $_SESSION['logged_in'] = true;
                        header("Location: admin.php");
                        exit;
                    } else {
                        echo "Vale parool!";
                    }
                
                } else {
                    echo "Kasutajat ei leitud!";
                }   
            }
            ?>

                



            <?php
            $yhendus->close();
            ?>   
            </div>

            <script
                src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                crossorigin="anonymous"
            ></script>

            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                crossorigin="anonymous"
            ></script>
        </body>
    </html>
