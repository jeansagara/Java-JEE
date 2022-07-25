<%@page import="Classe.Utilisateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

        
<body>
<h1>BIENVENUE ${nom} </h1>
<div>
<form method="post" action="${pageContext.servletContext.contextPath}/Monservlet2">

<button type="submit">Déconnecter</button>
</form>

		<%
           HttpSession ses=request.getSession();
           List<Utilisateur> liste=(List)ses.getAttribute("liste");
           System.out.println(liste);
       %>
       
       <table>
            <tr> 
                
                <th>NOM</th>
                <th>PRENOM</th>
                <th>EMAIL</th>
                   
            </tr>
            
           <% for(Utilisateur u:liste) {%>
                <tr>

                <td><%= u.getNom() %></td>
                <td><%= u.getPrenom() %></td>
                <td><%= u.getEmail() %></td>

                </tr>
            <%}%>
            
                
        </table>

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
h1{
text-align:center;
margin-top: 116px;
}
button{
   boder-radius: 10px;
   padding: 5px;
   with: 50%;
   background-color: #f79d00;
}




</style>



</html>