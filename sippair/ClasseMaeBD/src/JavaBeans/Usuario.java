package JavaBeans;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Usuario extends ClasseMaeBD {

    public int pkuser;
    public String email;
    public String senha;
    public String nome;
    public Integer idade;
    public Integer notas;
    public String comentarios;

    public boolean checarLogin() {
        try {
            sql = "select * from usuario where email = ? and senha = ?";
            ps = con.prepareStatement(sql); 
            ps.setString(1, email);
            ps.setString(2, senha);
            tab = ps.executeQuery();
            if (tab.next()) {
                this.pkuser = tab.getInt("pkuser");
                this.email = tab.getString("email");
                this.senha = tab.getString("senha");
                this.nome = tab.getString("nome");
                this.idade = tab.getInt("idade");
                this.notas = tab.getInt("notas");
                this.comentarios = tab.getString("comentarios");
                return true;
            }
            this.statusSQL = null; 
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao tentar buscar Usuário! Tente novamente! " + ex.getMessage();
        }
        return false;
    }

    public void incluir() {
        try {
            sql = "insert into usuarios (pkuser, email, senha, nome, idade, notas, comentarios) " + "values (?,?,?,?,?,0,0) ";
            ps = con.prepareStatement(sql);
            ps.setInt(1, pkuser);
            ps.setString(2, email);
            ps.setString(3, senha);
            ps.setString(4, nome);
            ps.setInt(5, idade);
            ps.setInt(6, notas);
            ps.setString(7, comentarios);
            ps.executeUpdate();
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao incluir usuario! Tente novamente mais tarde! <br> " + ex.getMessage();
        }
    }

    public boolean atualizarDados() {
        sql = "UPDATE usuarios SET ";
        boolean hasField = false;

        if (this.email != null) {
            sql += "email = ?, ";
            hasField = true;
        }
        if (this.senha != null) {
            sql += "senha = ?, ";
            hasField = true;
        }
        if (this.nome != null) {
            sql += "nome = ?, ";
            hasField = true;
        }
        if (this.idade != null) {
            sql += "idade = ?,";
            hasField = true;
        }
        if (this.notas != null) {
        	sql += "notas = ?, ";
        	hasField = true;
        }
        if (this.comentarios != null) {
        	sql += "comentarios = ? ";
        }

        sql = sql.trim();
        if (sql.endsWith(",")) {
            sql = sql.substring(0, sql.length() - 1);
        }

        sql += " WHERE pkuser = ?";

        if (!hasField) {
            return false; 
        }

        try (PreparedStatement ps= con.prepareStatement(sql)) {
            int index = 1;
            if (this.email != null) {
                ps.setString(index++, this.email);
            }
            if (this.senha != null) {
                ps.setString(index++, this.senha);
            }
            if (this.nome != null) {
                ps.setString(index++, this.nome);
            }
            if (this.idade != null) {
                ps.setInt(index++, this.idade);
            }
            if (this.notas != null) {
            	ps.setInt(index++, this.notas);
            }
            if(this.comentarios != null) {
            	ps.setString(index++, this.comentarios);
            }
            ps.setInt(index, this.pkuser);

            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao Alterar usuario ! <br> " + ex.getMessage();
        }
        return false;
    }

    public void deletar() {
        try {
            sql = "delete from usuarios where ucase(trim(pkuser)) = ucase(trim(?))";
            ps = con.prepareStatement(sql);
            ps.setInt(1, this.pkuser);
            ps.executeUpdate();
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao Alterar usuario ! <br> "
                    + ex.getMessage();
        }
    }
}