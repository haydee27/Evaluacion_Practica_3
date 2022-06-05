<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : mostrarC
    Created on : 06-04-2022, 06:28:50 PM
    Author     : MINEDUCYT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Categoria!</h1>
    <c:forEach var="listaTotal" items="${sessionScope.categorias}">
        ID CATEGORIA: ${listaTotal.id_categoria}<br>
        NOMBRE CATEGORIA: ${listaTotal.nom_categoria}<br>
        ESTADO CATEGORIA: ${listaTotal.estado_categoria}<br>
    </c:forEach>
    </body>
</html>
