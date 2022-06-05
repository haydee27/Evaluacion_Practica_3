
package modelo;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;

public class Producto {
    //Atributos de la clase
    String id_producto;
    String nom_producto;
    String des_producto;
    String stock;
    String precio;
    String unidad_de_medida;
    String estado_producto;
    String categoria;
    String fecha_entrada;
    
    Connection cnn;
    Statement state;
    ResultSet result;
    
    //Constructor

    public Producto() {
        try {
            Class.forName("com.mysql.jdbc.Driver"); //Driver
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_inventario?zeroDateTimeBehavior=convertToNull", "root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Producto(String id_producto, String nom_producto, String des_producto, 
            String stock, String precio, String unidad_de_medida, String estado_producto, String categoria) {
        this.id_producto = id_producto;
        this.nom_producto = nom_producto;
        this.des_producto = des_producto;
        this.stock = stock;
        this.precio = precio;
        this.unidad_de_medida = unidad_de_medida;
        this.estado_producto = estado_producto;
        this.categoria = categoria;
        
    }
    
    
    public boolean insertarDatos(){
        try{
           String miQuery = "insert into tb_producto values('" + id_producto + "', '" + nom_producto + "', '" + des_producto + "', '" + stock + "', '" + precio + "', '" + unidad_de_medida + "', '" + categoria + "', '" + fecha_entrada + "');";
           int estado = 0;
           state = cnn.createStatement();
           estado = state.executeUpdate(miQuery);
           if(estado == 1){
               return true;
           }
           
         }catch (SQLException ex) {
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public ArrayList<Producto> consultarRegistros(){
        
        ArrayList<Producto> prod = new ArrayList();
        try{
            String miQuery = "select * from tb_producto;";
            state = cnn.createStatement();
            result = state.executeQuery(miQuery);
            while(result.next()){
                prod.add(new Producto(result.getString("id_producto"), result.getString("nom_producto"), result.getString("des_producto"), result.getString("stock"), result.getString("unidad_de_medida"), result.getString("estado_producto"), result.getString("categoria"), result.getString("fecha_entrada")));
            }
            
        }catch(SQLException ex){
            Logger.getLogger(Producto.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        return prod;
    }
    //metodo set y get

    public String getId_producto() {
        return id_producto;
    }

    public void setId_producto(String id_producto) {
        this.id_producto = id_producto;
    }

    public String getNom_producto() {
        return nom_producto;
    }

    public void setNom_producto(String nom_producto) {
        this.nom_producto = nom_producto;
    }

    public String getDes_producto() {
        return des_producto;
    }

    public void setDes_producto(String des_producto) {
        this.des_producto = des_producto;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getUnidad_de_medida() {
        return unidad_de_medida;
    }

    public void setUnidad_de_medida(String unidad_de_medida) {
        this.unidad_de_medida = unidad_de_medida;
    }

    public String getEstado_producto() {
        return estado_producto;
    }

    public void setEstado_producto(String estado_producto) {
        this.estado_producto = estado_producto;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getFecha_entrada() {
        return fecha_entrada;
    }

    public void setFecha_entrada(String fecha_entrada) {
        this.fecha_entrada = fecha_entrada;
    }

    
    
}
