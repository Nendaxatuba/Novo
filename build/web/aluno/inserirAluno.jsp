<%@page import="br.com.DAO.AlunoDAO"%>
<%@page import="br.com.model.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Aluno</title>
    </head>
    <body>
        <%
            try {
                Aluno objAluno = new Aluno();
                objAluno.setRa(Integer.parseInt(request.getParameter("raAluno")));
                objAluno.setCpf(Integer.parseInt(request.getParameter("cpfAluno")));
                objAluno.setNome_aluno(request.getParameter("nomeAluno"));
                objAluno.setEmail(request.getParameter("emailAluno"));
                objAluno.setCelular(Integer.parseInt(request.getParameter("celularAluno")));
                objAluno.setCod_curso(Integer.parseInt(request.getParameter("codCurso")));

                AlunoDAO objAlunoDAO = new AlunoDAO();
                objAlunoDAO.cadastrarAluno(objAluno);
                out.print("Aluno Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
