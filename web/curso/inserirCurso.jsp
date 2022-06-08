<%@page import="br.com.DAO.CursoDAO"%>
<%@page import="br.com.model.Curso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Curso</title>
    </head>
    <body>
        <%
            try {
                Curso objCurso = new Curso();
                
                objCurso.setCod_curso(Integer.parseInt(request.getParameter("codCurso")));
                objCurso.setNome_curso(request.getParameter("nomeCurso"));
                objCurso.setTurno(request.getParameter("turno"));

                CursoDAO objCursoDAO = new CursoDAO();
                objCursoDAO.cadastrarCurso(objCurso);
                out.print("Curso Inserido!!");
            } catch (Exception e) {
            }

        %>
    </body>
</html>
