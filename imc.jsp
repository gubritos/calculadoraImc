<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado do IMC - Só JSP</title>
        <%
          String tmp = null;
          float peso = 0;
          float altura = 0;
          float imc = 0;
          
          tmp = request.getParameter("peso");
          peso = Float.parseFloat(tmp.replaceAll(",", "."));
           
          tmp = request.getParameter("altura");
          altura = Float.parseFloat(tmp.replaceAll(",", "."));
          
          imc = peso/(altura*altura);
        %>
    </head>
    <body>
        <h3>Resultado</h3>
        <br />
        <p>Seu IMC é: <%= imc %> </p>
        <% if(imc < 18.5) { %>
        <p style="background-color: red">Muito abaixo do peso</p>
        <%} else if(imc >= 18.5 && imc < 24.9) { %>
        <p style="background-color: green">Normal</p>
        <%} else if(imc >= 25 && imc < 24.9) { %>
        <p style="background-color: yellow">Sobrepeso I</p>
        <%} else if(imc >= 30 && imc < 39.9) { %>
        <p style="background-color: orange">Obesidade II</p>
        <%} else { %>
        <p style="background-color: black">
            <font style="color: white">Obesidade III</font></p>
        <% } %>
        
        <br />
        
        
    </body>
</html>
