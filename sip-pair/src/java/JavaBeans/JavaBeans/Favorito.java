package JavaBeans;

import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.Connection;

public class Favorito extends Usuario {

    public int pkfav;
    public int pkuser;
    public String imagem;
    
    public Favorito(){
        super();
    }

    public void salvarFavorito() {
        try {
            sql = "INSERT INTO favoritos (pkuser, imagem) VALUES (?, ?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1, pkuser);
            ps.setString(2, imagem);
            ps.executeUpdate();
            statusSQL = null;
        } catch (SQLException e) {
            statusSQL = "Erro ao favoritar: " + e.getMessage();
        }
    }

    public void removerFavorito() {
        try {
            sql = "DELETE FROM favoritos WHERE pkuser = ? AND imagem = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, pkuser);
            ps.setString(2, imagem);
            ps.executeUpdate();
            statusSQL = null;
        } catch (SQLException e) {
            statusSQL = "Erro ao desfavoritar: " + e.getMessage();
        }
    }

    public boolean isFavoritado() {
        try {
            sql = "SELECT * FROM favoritos WHERE pkuser = ? AND imagem = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, pkuser);
            ps.setString(2, imagem);
            tab = ps.executeQuery();
            return tab.next(); // true se já existe
        } catch (SQLException e) {
            statusSQL = "Erro ao verificar favorito: " + e.getMessage();
            return false;
        }
    }

     public List<Favorito> listarFavoritos(int pkuser) {
        List<Favorito> lista = new ArrayList<>();
        try {
            this.sql = "SELECT imagem FROM favoritos WHERE pkuser = ?";
            this.ps = con.prepareStatement(sql);
            this.ps.setInt(1, pkuser);
            this.tab = ps.executeQuery();

            while (this.tab.next()) {
                Favorito f = new Favorito();
                f.imagem = this.tab.getString("imagem");
                lista.add(f);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }

}
