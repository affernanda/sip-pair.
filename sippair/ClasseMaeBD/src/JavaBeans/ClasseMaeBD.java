package JavaBeans;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Connection;
import java.sql.PreparedStatement;

public class ClasseMaeBD {

    public Connection con;
    public String sql;
    public PreparedStatement ps;
    public ResultSet tab;
    public String MeuBanco = "contas";
    public String servidor = "jdbc:mysql://localhost:3306";
    public String usuario = "root";
    public String senha = "";
    public String statusSQL;

    public ClasseMaeBD() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            con = DriverManager.getConnection(servidor, usuario, senha);

            this.criarBanco();

            statusSQL = null; 
        } catch (ClassNotFoundException ex) {
            statusSQL = "Driver JDBC não encontrado! " + ex.getMessage();
        } catch (SQLException ex) {
            statusSQL = "Servidor fora do ar ou comando SQL ! " + ex.getMessage();
        }
    }

    public void criarBanco() {
        try {
            sql = "create database if not exists " + this.MeuBanco;
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

            sql = "use " + this.MeuBanco;
            ps = con.prepareStatement(sql);
            ps.executeUpdate();

            sql = "create table if not exists usuario ( "
                    + "pkuser int AUTO_INCREMENT,"
                    + "email varchar(40) not null,"
                    + "senha varchar(20) not null,"
                    + "nome varchar(40) not null,"
                    + "idade int(5) not null,"
                    + "notas int(5),"
                    + "comentarios varchar(400)"
                    + "PRIMARY KEY (pkuser)) ";
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
            sql = "create table if not exists postagens ( "
                    + "pkpost int AUTO_INCREMENT,"
            		+ "pkuser int not null,"
                    + "titulo varchar(40) not null,"
                    + "conteudo varchar(20) not null,"
                    + "dt_post date,"
                    + "comentarios varchar(400) not null,"
                    + "PRIMARY KEY (pkuser)) "
                    + "CONSTRAINT fk_publicacoes_user FOREIGN KEY (pkuser) REFERENCES usuario(pkuser) )";
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        } catch (SQLException err) {
            statusSQL = "Erro ao executar SQL " + err.getMessage();
        }
    }
}
