package br.com.DAO;

import br.com.model.Curso;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CursoDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Curso> lista = new ArrayList<>();
    
    public void cadastrarCurso(Curso objCurso) throws ClassNotFoundException{
        String sql = "insert into curso (cod_curso, nome_curso, turno) values (?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objCurso.getCod_curso());
            pstm.setString(2, objCurso.getNome_curso());
            pstm.setString(3, objCurso.getTurno());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Curso> pesquisarCurso() throws ClassNotFoundException{
        String sql = "select * from Curso";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Curso objCurso = new Curso();
                objCurso.setCod_curso(rs.getInt("cod_curso"));
                objCurso.setNome_curso(rs.getString("nome_curso"));
                objCurso.setTurno(rs.getString("turno"));
                
                lista.add(objCurso);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    
}

