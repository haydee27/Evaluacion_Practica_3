
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <ul class="menu" List-style="none" padding="0" background="black">
            <li><a href="http://localhost:8084/eva3/">Inicio</a></li>
            <li><a href="http://localhost:8084/eva3/agregarProducto.jsp">Registrar Producto</a></li>
            <li><a href="http://localhost:8084/eva3/agregarcategoria.jsp">Registro Categoria</a></li>
            <li><a href="#">Modificar</a></li>
            <li><a href="#">Eliminar</a></li>
            <li><a href="#">Buscar</a></li>
        </ul>
    <center><h1> INGRESE LOS DATOS DEL PRODUCTO </h1>  </center> 
    <center><form action="recibirP.do" method="POST">    
          <table cellspacing="6" cellpadding="10" border="3" >
              <tr>        
                  <td align="right"> ID PRODUCTO: </td>      
                  <td><input type="text" name="txtid" value=""></td>      
              </tr>    
              <tr>        
                  <td align="right"> NOMBRE: </td>      
                  <td><input type="text" name="txtnom" value=""></td>      
              </tr>    
              <tr>    
                  <td align="right"> DESCUENTO: </td>     
                  <td> <input type="text" name="txtdes" value=""> </td>    
              </tr>  
              <tr>    
                  <td align="right"> STOCK: </td>       
                  <td> <input type="text" name="txtstock" value=""> </td>     
              </tr> 
              <tr>        
                  <td align="right"> PRECIO: </td>      
                  <td><input type="text" name="txtprecio" value=""></td>      
              </tr>
              <tr>        
                  <td align="right"> UNIDAD DE MEDIDA: </td>      
                  <td><input type="text" name="txtunida_medida" value=""></td>      
              </tr>
              <tr>        
                  <td align="right"> ESTADO DE MEDIDA: </td>      
                  <td><input type="text" name="txtEstado" value=""></td>      
              </tr> 
              <tr>        
                  <td align="right"> CATEGORIA: </td>      
                  <td><input type="text" name="txtcategoria" value=""></td>      
              </tr>
              <tr>        
                  <td align="right"> FECHA DE ENTRADA: </td>      
                  <td><input type="date" name="txtfecha_entrada" value=""></td>      
              </tr>    
          </table>
          <input type="reset" value="Borrar">    
          <input type="submit" value="Enviar">   
        </form>
    </center> 
    </body>
</html>

