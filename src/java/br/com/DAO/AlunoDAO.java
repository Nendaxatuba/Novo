package br.com.DAO;

import br.com.model.Aluno;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AlunoDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Aluno> lista = new ArrayList<>();
    
    public void cadastrarAluno(Aluno objAluno) throws ClassNotFoundException{
        String sql = "insert into aluno (ra, cpf, nome_aluno, email, celular, cod_curso) values (?,?,?,?,?,?)";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objAluno.getRa());
            pstm.setInt(2, objAluno.getCpf());
            pstm.setString(3, objAluno.getNome_aluno());
            pstm.setString(4, objAluno.getEmail());
            pstm.setInt(5, objAluno.getCelular());
            pstm.setInt(6, objAluno.getCod_curso());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public ArrayList<Aluno> pesquisarAluno() throws ClassNotFoundException{
        String sql = "select * from aluno";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            while(rs.next()){
                Aluno objAluno = new Aluno();
                objAluno.setRa(rs.getInt("ra"));
                objAluno.setRa(rs.getInt("cpf"));
                objAluno.setNome_aluno(rs.getString("nome_aluno"));
                objAluno.setEmail(rs.getString("email"));
                objAluno.setCelular(rs.getInt("celular"));
                objAluno.setCod_curso(rs.getInt("cod_curso"));
                
                lista.add(objAluno);
            }
            pstm.close();
            
        } catch (SQLException e) {
        }
        
        return lista;
    }
    
}

