<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Aluno"%>
<%@page import="br.com.DAO.AlunoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Alunos</title>
    </head>
    <body>
        <%
            try {
                AlunoDAO objAlunoDAO = new AlunoDAO();
                ArrayList<Aluno> lista = objAlunoDAO.pesquisarAluno();
                                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("RA: " + lista.get(num).getRa() + "<br>");
                    out.print("CPF: " + lista.get(num).getCpf() + "<br>");
                    out.print("Aluno: " + lista.get(num).getNome_aluno() + "<br>");
                    out.print("Email: " + lista.get(num).getEmail() + "<br>");
                    out.print("Celular: " + lista.get(num).getCelular() + "<br>");
                    out.print("Codigo curso: " + lista.get(num).getCod_curso() + "<br>");
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>
