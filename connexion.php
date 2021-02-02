<?php 
    session_start();
    require_once 'config.php';
?>
<!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
            <link rel="stylesheet" href="styles/style.css">
            <title>Connexion</title>
        </head>
        <body>
            <div class="container">
        
                <div class="text-center">
                    <?php 
                    if(isset($_POST['email']) && isset($_POST['password']) )
                    {
                        $email = htmlspecialchars($_POST['email']);
                        $password = htmlspecialchars($_POST['password']);

                            if(filter_var($email, FILTER_VALIDATE_EMAIL))
                            {

                                    $check = $bdd->prepare('SELECT email, password FROM utilisateurs WHERE email = ?');
                                    $check->execute(array($email));
                                    $data = $check->fetch();
                                    
                                    $row = $check->rowCount();

                                    if($row == 1)
                                    {
                                        $password = hash('sha256', $password);
                                        echo $password;
                                        if($password == $data['password'])
                                        {
                                            $_SESSION['user'] = $email;
                                            header('Location:index.php');
                                        }
                                        else 
                                            echo "Mot de passe incorrect";

                                    }
                                    else 
                                        echo "Ce compte n'existe pas !";

                            }
                            else 
                                echo "Email non valide !";

                    }
                ?>
                </div>
                <br>
                <div class="all" style="display:flex;">
                    <div class="image" style="background-color:#f9f9f9; width:80%; height:430px;">
                            <div class="row">
                                <div class="col-lg-4 col-sm-4 col-md-4 col-xs-4 offset-4 mt-5">
                                    <img src="images/simplone.png" alt=""  width="80%" height="180px" style="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-xs-12 col-sm-12 col-md-12">
                                <h1 class="text-uppercase text-primary font-weight-bold text-center">Bienvenue</h1>
                                <h2 class="font-weight-bold text-center">sur le portail de <span class="text-danger">SIMPLON'APS !</span> </h2>
                                </div>
                            </div>
                    </div>
                    <div class="form-group" style="background-color:#00babb; width:80%; height:430px;">
                        <h1 class="py-3" style="font-family:italic;">Se connecter</h1>
                            <form action="" method="POST">
                                <input type="email" name="email" class="form-control" placeholder="Votre email" autocomplete="off" required>
                                <br>
                                <input type="password" name="password" class="form-control" placeholder="Votre mot de passe" autocomplete="off" required>
                                <br>
                                <br>
                                <button type="submit" class="btn btn-success">Connexion</button>
                            </form>
                            <p class="mt-5 font-size-3">Avez-vous déjà un compte ?<a href="inscription.php"> S'inscrire</a></p>
                   </div>
                </div>
            </div>
            <p class="text-white text-center mt-5">2019 -2021 | Copyright | SIMPLON'APS, Tous droits réservés
</p>

        </body>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</html> 