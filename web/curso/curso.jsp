<%-- 
    Document   : curso
    Created on : 18 de mai. de 2022, 18:10:54
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="inserirCurso.jsp" method="POST">

            <label>Código: </label> 
            <input type="text" name="codCurso"><br> 
            <label>Curso: </label> 
            <input type="text" name="nomeCurso"><br> 
            
            <label>Turno: </label> 
              <input type="radio" name="turno" value="manhã">
              <label>Manhã</label>
              <input type="radio" name="turno" value="noite">
              <label>Noite</label><br>              

            <button type="submit">CADASTRAR</button> <br> 
        </form>
        <a href="listarCurso.jsp">Listar Cursos</a>
    </body>
</html>
