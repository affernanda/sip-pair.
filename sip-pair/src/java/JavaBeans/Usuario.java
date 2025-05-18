package JavaBeans;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

public class Usuario extends ClasseMaeBD {

    public int pkuser;
    public String email;
    public String senha;
    public String nome;
    public String idade;

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
                this.idade = tab.getString("idade");
                return true;
            }
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao tentar buscar Usuário! Tente novamente! " + ex.getMessage();
        }
        return false;
    }

    public boolean checarEmail() {
        try {
            sql = "select * from usuario where email = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            tab = ps.executeQuery();
            if (tab.next()) {
                this.pkuser = tab.getInt("pkuser");
                this.email = tab.getString("email");
                this.nome = tab.getString("nome");
                this.idade = tab.getString("idade");
                return true;
            }
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao tentar buscar o email! Tente novamente! " + ex.getMessage();
        }
        return false;
    }

    public void incluir() {
        try {
            sql = "INSERT INTO usuario (email, senha, nome, idade) VALUES (?, ?, ?, ?)";
            ps = con.prepareStatement(sql, java.sql.Statement.RETURN_GENERATED_KEYS); // <- ESSENCIAL
            ps.setString(1, email);
            ps.setString(2, senha);
            ps.setString(3, nome);
            ps.setString(4, idade);

            int rowsAffected = ps.executeUpdate(); // <- Confirma se inseriu

            if (rowsAffected > 0) {
                ResultSet generatedKeys = ps.getGeneratedKeys();
                if (generatedKeys.next()) {
                    this.pkuser = generatedKeys.getInt(1); // <- Captura o pkuser
                }
            } else {
                this.statusSQL = "Nenhuma linha foi inserida.";
            }

        } catch (SQLException e) {
            this.statusSQL = "Erro ao inserir usuário: " + e.getMessage();
        }
    }

    public boolean atualizarDados() {
        sql = "UPDATE usuario SET ";
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

        sql = sql.trim();
        if (sql.endsWith(",")) {
            sql = sql.substring(0, sql.length() - 1);
        }

        sql += " WHERE pkuser = ?";

        if (!hasField) {
            return false;
        }

        try (PreparedStatement ps = con.prepareStatement(sql)) {
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
                ps.setString(index++, this.idade);
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
            sql = "delete from usuario where ucase(trim(pkuser)) = ucase(trim(?))";
            ps = con.prepareStatement(sql);
            ps.setInt(1, this.pkuser);
            ps.executeUpdate();
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao Alterar usuario ! <br> "
                    + ex.getMessage();
        }
    }

    public List<Review> listarTodosReviews() {
        List<Review> lista = new ArrayList<>();
        try {
            ClasseMaeBD bd = new ClasseMaeBD();
            bd.sql = "SELECT r.comentario, r.nota, u.nome FROM reviews r JOIN usuario u ON r.pkuser = u.pkuser";
            bd.ps = bd.con.prepareStatement(bd.sql);
            bd.tab = bd.ps.executeQuery();

            while (bd.tab.next()) {
                Review c = new Review();
                c.comentario = bd.tab.getString("comentario");
                c.nota = bd.tab.getString("nota");
                c.nomeUsuario = bd.tab.getString("nome");
                lista.add(c);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar reviews: " + e.getMessage());
        }
        return lista;
    }

}
