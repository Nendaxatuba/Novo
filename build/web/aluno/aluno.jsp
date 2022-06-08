<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Curso"%>
<%@page import="br.com.DAO.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Aluno</title>
    </head>
    <body>
        <form action="inserirAluno.jsp" method="POST">

            <label>Ra: </label>  
            <input type="text" name="raAluno"><br> 
            <label>CPF do Aluno: </label> 
            <input type="text" name="cpfAluno"><br>
            <label>Nome do Aluno: </label>  
            <input type="text" name="nomeAluno"><br>
            <label>Email do Aluno: </label>  
            <input type="text" name="emailAluno"><br> 
            <label>Celular do Aluno: </label> 
            <input type="text" name="celularAluno"><br> 
            <label>Curso: </label>
            <select name="codCurso">
                <%
                    try {
                        CursoDAO objCursoDAO = new CursoDAO();
                        ArrayList<Curso> lista = objCursoDAO.pesquisarCurso();

                        for (int num = 0; num < lista.size(); num++) {
                            out.print("<option value="+ lista.get(num).getCod_curso() +">"+ lista.get(num).getNome_curso() +"</option>");

                            }

                    } catch (Exception e) {
                    }
                %>  
            </select><br>

            <button type="submit">CADASTRAR</button> <br>             
        </form>
        <a href="listarAluno.jsp">Listar Alunos</a>
    </body>
</html>
