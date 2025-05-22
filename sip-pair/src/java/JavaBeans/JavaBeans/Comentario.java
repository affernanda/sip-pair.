package JavaBeans;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class Comentario extends Usuario {

    public int pkreview;
    public String titulo;
    public String nota;
    public String comentario;

    public Comentario() {
        super(); 
    }

    public void criarComentario() {
        try {
            sql = "insert into reviews (pkuser, titulo, nota, comentario) " + "values (?,?,?,?) ";
            ps = con.prepareStatement(sql);
            ps.setInt(1, pkuser);
            ps.setString(2, titulo);
            ps.setString(3, nota);
            ps.setString(4, comentario);
            ps.executeUpdate();
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao criar comentário! Tente novamente mais tarde! <br> " + ex.getMessage();
        }
    }

    public void excluirComentario() {
        try {
            sql = "delete from reviews where ucase(trim(pkreview)) = ucase(trim(?))";
            ps = con.prepareStatement(sql);
            ps.setInt(1, this.pkreview);
            ps.executeUpdate();
            this.statusSQL = null;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao apagar comentário! Tente novamente mais tarde! <br> " + ex.getMessage();
        }
    }

    public boolean editarComentario() {
        sql = "UPDATE reviews SET ";
        boolean hasField = false;

        if (this.titulo != null) {
            sql += "titulo = ?, ";
            hasField = true;
        }
        if (this.nota != null) {
            sql += "nota = ?, ";
            hasField = true;
        }
        if (this.comentario != null) {
            sql += "comentario = ?, ";
            hasField = true;
        }

        sql = sql.trim();
        if (sql.endsWith(",")) {
            sql = sql.substring(0, sql.length() - 1);
        }

        sql += " WHERE pkreview = ?";

        if (!hasField) {
            return false;
        }

        try (PreparedStatement ps = con.prepareStatement(sql)) {
            int index = 1;
            if (this.titulo != null) {
                ps.setString(index++, this.titulo);
            }
            if (this.nota != null) {
                ps.setString(index++, this.nota);
            }
            if (this.comentario != null) {
                ps.setString(index++, this.comentario);
            }

            ps.setInt(index, this.pkreview);

            return ps.executeUpdate() > 0;
        } catch (SQLException ex) {
            this.statusSQL = "Erro ao Alterar usuario ! <br> " + ex.getMessage();
        }
        return false;
    }
    
    public List<Comentario> listarComentarios(int pkuser) {
    List<Comentario> lista = new ArrayList<>();
    try {
        sql = "SELECT * FROM reviews WHERE pkuser = ?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, pkuser);
        tab = ps.executeQuery();
        while (tab.next()) {
            Comentario c = new Comentario();
            c.pkreview = tab.getInt("pkreview");
            c.pkuser = tab.getInt("pkuser");
            c.titulo = tab.getString("titulo");
            c.nota = tab.getString("nota");
            c.comentario = tab.getString("comentario");
            lista.add(c);
        }
    } catch (SQLException e) {
        this.statusSQL = "Erro ao buscar comentários: " + e.getMessage();
    }
    return lista;
}

}
