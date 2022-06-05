/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import static java.awt.event.PaintEvent.UPDATE;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import static jdk.nashorn.internal.runtime.PropertyDescriptor.SET;
import modelo.categoria;

public class Ccategoria {
    public static boolean ActualizarCategoria(categoria categoria){
        boolean respuesta=false ;
        try{
       
       String MiQuery = UPDATE categoria SET nom_categoria=´"+categoria.getnom_categoria()+"´, estado_categoria=´"+categoria.getestado_categoria()+"´WHERE id_categoria="+categoria.getid_categoria()+"";
     conexion=mysqlConexion.conexion();
                stm=conexion.creaeStatement();
                stm .executeUpdate(MiQuery);
        return false;

}

    }