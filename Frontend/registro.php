<!DOCTYPE html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale-1.0">
  <title>Document</title>
  <link rel="stylesheet" href="iniciodesesionyregistro.css">
</head>
<body>
  <div class="formulario">
    <h1>Registro Gobierno</h1>
    <form method="post" action="login_register.php">
      <div class="username">
        <input type="number" name="Dni_GOB" required>
        <label>DNI</label>
     </div> 
<div class="contraseña">
  <input type="password" name="Contraseña_GOB" required>
  <label>Contraseña</label>
</div>


<input type= "submit" value="Registrarse" name="btnregistrar_GOB">
<div class="registrarse">
  ¿Ya tienes una cuenta?  <a href ="./proyecto.php">Iniciar Sesion</a>
</div>
</form>

  <div> 
</body>
</html>