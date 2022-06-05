package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;
public class categoria {
    
    String id_categoria;
    String nom_categoria;
    String estado_categoria;

    Connection cnn;
    Statement state;
    ResultSet result;
    
    
    public categoria() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_inventario?zeroDateTimeBehavior=convertToNull", "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(categoria.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public categoria(String id_categoria, String nom_categoria, String estado_categoria) {
        this.id_categoria = id_categoria;
        this.nom_categoria = nom_categoria;
        this.estado_categoria = estado_categoria;
    }
    
    public boolean insertDatos(){
        try{
            String miQuery = "insert into tb_categoria values('" + id_categoria + "', '" + nom_categoria + "', '" + estado_categoria + "');";
            int estado = 0;
            state = cnn.createStatement();
            estado = state.executeUpdate(miQuery);
            if(estado == 1){
                return true;
            }
        }catch (SQLException ex) {
            Logger.getLogger(categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public ArrayList<categoria> consultarRegistrar(){
        ArrayList<categoria> categ = new ArrayList();
        try{
            String miQuery = "select * from tb_categoria;";
            state = cnn.createStatement();
            result = state.executeQuery(miQuery);
            while(result.next()){
                
                categ.add(new categoria(result.getString("id_categoria"), result.getString("nom_categoria"), result.getString("estado_categoria")));
            }
        }catch(SQLException ex){
            Logger.getLogger(categoria.class.getName()).log(Level.SEVERE, null, ex);
        }
        return categ;
    }
    public String getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(String id_categoria) {
        this.id_categoria = id_categoria;
    }

    public String getNom_categoria() {
        return nom_categoria;
    }

    public void setNom_categoria(String nom_categoria) {
        this.nom_categoria = nom_categoria;
    }

    public String getEstado_categoria() {
        return estado_categoria;
    }

    public void setEstado_categoria(String estado_categoria) {
        this.estado_categoria = estado_categoria;
    }
    
    
    
}
