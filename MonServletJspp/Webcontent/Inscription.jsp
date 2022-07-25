<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
</head>

<body>  
<div class="log">
<h1>INSCRIPTION</h1>
<form method="post" action="${pageContext.servletContext.contextPath}/Monservlet">
<input type="text" placeholder="Nom:" name="nom" required class="input" ><br><br>
<input type="text" placeholder="Prenom:" name="prenom" required class="input"><br><br>
<input type="email" placeholder="Email:" name="email" required class="input" ><br><br>
<input type="password" placeholder="Mot de Passe:" name="mdps" required class="input" ><br><br>
<input type="password" placeholder="Repeter le mot de Passe :" name="cmdps" required class="input" ><br><br>
<button type="submit" id="send">S'inscrire</button>
<button type="reset">Annuler</button>
<p>vous êtes déjà connecté ?? <a href="@">cliquez ici</a>
</form>
</div>

</body>



<style>
body{
    background-image:linear-gradient(to right, #16bffd, #d39d38, #ff6a00);
    background-position: center;
    background-size:cover;
    height:100vh;
    margin:0;
    padding:0;
}
.log{
   text-align: center;
    width: 270PX;
    padding: 20PX;
    box-shadow: 0 0 3PX RGBA(0,0,0,0.8);
    margin-left: 482px;
    margin-top: 39px;
}
.input{
   border-radius: 10px;
   padding: 8px;
   margin: 1Opx 0;
   border: 2px solid white;
}
h1{
  color: white;
}
p{
  color: white;
}
button{
   boder-radius: 10px;
   padding: 5px;
   with: 50%;
   background-color: f79d00;
}
a{
  color: lightskyblue;
}

</style> 



</html>