
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.model.Curso"%>
<%@page import="br.com.DAO.CursoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Cursos</title>
    </head>
    <body>
        <%
            try {
                CursoDAO objCursoDAO = new CursoDAO();
                ArrayList<Curso> lista = objCursoDAO.pesquisarCurso();
                                
                for (int num = 0; num < lista.size(); num++) {
                    out.print("Código: " + lista.get(num).getCod_curso() + "<br>");
                    out.print("Curso: " + lista.get(num).getNome_curso() + "<br>");
                    out.print("Turno: " + lista.get(num).getTurno() + "<br>");
                        
                    }

            } catch (Exception e) {
            }
        %>
    </body>
</html>
