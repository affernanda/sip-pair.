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
                    + "pkuser int not null auto_increment,"
                    + "email varchar(40) not null,"
                    + "senha varchar(20) not null,"
                    + "nome varchar(40) not null,"
                    + "idade varchar(5) not null,"
                    + "PRIMARY KEY (pkuser))";
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
            sql = "create table if not exists reviews ("
                    + "pkreview int not null auto_increment, "
                    + "pkuser int not null, "
                    + "titulo varchar(40) not null, "
                    + "nota varchar(5) not null, "
                    + "comentario varchar(400) not null, "
                    + "PRIMARY KEY (pkreview),"
                    + "CONSTRAINT fk_reviews_user FOREIGN KEY (pkuser) REFERENCES usuario(pkuser))";
            
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
            sql = "create table if not exists favoritos ("
                    + "pkfav int not null auto_increment, "
                    + "pkuser int not null, "
                    + "imagem varchar(400) not null, "
                    + "PRIMARY KEY (pkfav), "
                    + "CONSTRAINT fk_favoritos_user FOREIGN KEY (pkuser) REFERENCES usuario(pkuser))";
            
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
                    
        } catch (SQLException err) {
            statusSQL = "Erro ao executar SQL " + err.getMessage();
        }
    }
}
