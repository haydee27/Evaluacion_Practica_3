<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TODOS LOS REGISTROS DE PRODUCTOS</h1>
        <c:forEach var="listaTotal" items="${sessionScope.productos}">
            ID PRODUCTO: ${listaTotal.id_producto}<br>
            NOMBRE DE PRODUCTO : ${listaTotal.nom_producto}<br>
            DESCUENTO DE PRODUCTO: ${listaTotal.des_producto}<br>
            STOCK: ${listaTotal.stock}<br>
            PRECIO: ${listaTotal.precio}<br>
            UNIDAD DE MEDIDA: ${listaTotal.unidad_de_medida}<br>
            CATEGORIA: ${listaTotal.categoria}<br>
    
        </c:forEach>
    </body>
</html>
