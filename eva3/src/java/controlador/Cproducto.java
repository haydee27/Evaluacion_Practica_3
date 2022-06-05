/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.sql.SQLException;
import modelo.Producto;

public class Cproducto {
    public static boolean ActualizarProducto(Producto producto){
        boolean respuesta=false ;
        String MiQuery = "UPDATE Producto SET nom_producto=´"+producto.getnom_producto()+"´, des_producto=´"+producto.getdes_producto()+"´, stock=´"+producto.getstock()+"´,precio=´";
        String String = producto.getprecio()+"´,unidad_de_medida=´"+producto.getunidad_de_medida()+"´,estado_producto=´"+producto.getestado_producto()+"´,categoria=´"+producto.getcategoria()+"´,fecha_entrada=´"+producto.getfecha_entrada()+"´WHERE id_producto="+producto.getid_producto()+"";
                conexion=mysqlConexion.conexion();
                stm=conexion.creaeStatement();
                stm .executeUpdate(MiQuery);
        return false;
    }
}
