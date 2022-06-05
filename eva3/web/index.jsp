
<%@page import="controlador.mostrarC"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: url(https://images.app.goo.gl/CsWT6VWQKBzou6jEA)" cover:>
        <ul class="menu" List-style="none" padding="0" background="black">
            <li><a href="http://localhost:8084/eva3/">Inicio</a></li>
            <li><a href="http://localhost:8084/eva3/agregarProducto.jsp">Registrar Producto</a></li>
            <li><a href="http://localhost:8084/eva3/agregarcategoria.jsp">Registro Categoria</a></li>
            <li><a href="#">Modificar Tabla Producto</a></li>
            <li><a href="#">Modificar Tabla Categoria</a></li>
            <li><a href="#">Eliminar Registros De Tabla Producto</a></li>
            <li><a href="#">Eliminar Registros de Categoria</a></li>
            <li><a href="http://localhost:8084/eva3/mostrarP.jsp">Buscar Registros De Productos</a></li>
             <li><a href="#">Buscar Registros De Categorias</a></li>
        </ul>
  
        <h1><center>REGISTRO DE DATOS</center></h1>
    <center>
        <table border="3" width="1" cellspacing="4" cellpadding="10">
            <thead>
                <tr>
                    <th>PRODUCTOS</th> 
                </tr>
            </thead>
            <tbody>
                <form action="agregarProducto.jsp" method="POST">
                <tr>
                    <center>
                        <td>
                            <input type="submit" value="Ingresar Productos" name="btnP" />
                        </td>
                    </center>
                </tr>
                </form>
                <form action="agregarProducto.jsp" method="POST">
                <tr>
                    <center>
                        <td>
                            <input type="submit" value="Buscar Productos" name="btnBP" />
                        </td>
                    </center>    
                </tr>
                </form>
            </tbody>
            </form>
        </table>
        <center> 
            <br>
            <br>
            <br>
        <table border="3" width="1" cellspacing="4" cellpadding="10">
            <thead>
                <tr>
                    <th>CATEGORIA</th> 
                </tr>
            </thead>
            <tbody>
                 
            <form action="agregarcategoria.jsp" method="POST">
                <tr>
                    <center>
                        <td>
                            <input type="submit" value="Ingrese La Categoria" name="btnC"/>
                        </td>
                    </center> 
                </tr>
            </form>
            <form action="agregarcategoria.jsp" method="POST">
                <tr>
                    <center>
                        <td>
                            <input type="submit" value="Buscar Categorias" name="btnBC"/>
                        </td>
                        <a href="mostrarP">Ver registros</a>
                        <a href="mostrarC">Ver registros</a>
             </table>  
                    </center>
                </tr>
            </form>
            </tbody>
        </table>           
    </body>
</html>