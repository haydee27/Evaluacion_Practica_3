
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
    <center><h1>REGISTROS DE CATEGORIAS</h1>
        <h3>  INGRESE LOS DATOS DE LA CATEGORIA:</h3>     
       <form action="recibirC.do" method="post">       
           <table cellspacing="6" cellpadding="10" border="3" >          
               <tr>               
                   <td align="right">   ID CATEGORIA: </td>              
                   <td>
                       <input type="text" name="txtidcate" value="">
                   </td>           
               </tr>             
               <tr>               
                   <td align="right"> NOMBRE CATEGORIA: </td>                  
                   <td>
                       <input type="text" name="txtnomCate" value=""> 
                   </td>           
               </tr>    
               <tr>               
                   <td align="right"> ESTADO CATEGORIA: </td>                  
                   <td>
                       <input type="text" name="txtestado_categoria" value=""> 
                   </td>           
               </tr>          
           </table> 
           <br>
           <br>
           <input type="reset" value="Borrar">       
           <input type="submit" value="Agregar">    
       </form>   
    </body>
</center>
    </body>
</html>
