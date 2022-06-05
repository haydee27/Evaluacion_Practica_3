<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(Integer.parseString(request.getParameter("id_producto"))!=0&&request.getParameter("nom_producto")!=null&&request.getParameter("des_producto")!=null&&request.getParameter("des_producto")!=null&&request.getParameter("stock")!=null&&request.getParameter("precio")!=null&&request.getParameter("unidad_de_medida")!=null&&request.getParameter("estado_producto")!=null&&request.getParameter("categoria")!=null&&request.getParameter("fecha_entrada")){
            session.setAttribute("id_producto", (Integer.parseString(request.getParameter("id_producto")));
            
            }
            %>
        <h1>Modificar Producto</h1>
        <form action="Actualizar.jsp" method="post">
            <c:forEach var="listaTotal" items="${sessionScope.producto}">
                <input type="text" name="txtid_producto" value="${listaTotal.id_producto}" readonly="true"><br>
                <input type="text" name="txtnom_producto" value="${listaTotal.nom_producto}"><br>
                <input type="text" name="txtdes_producto" value="${listaTotal.des_producto}"><br>
                <input type="text" name="txtstock" value="${listaTotal.stock}"><br>
                <input type="text" name="txtprecio" value="${listaTotal.precio}"><br>
                <input type="text" name="txtunidad_de_medida" value="${listaTotal.unidad_de_medida}"><br>
                <input type="text" name="txtestado_producto" value="${listaTotal.esytado_producto}"><br>
                <input type="text" name="txtcategoria" value="${listaTotal.categoria}"><br>
                <input type="text" name="txtfecha_entrada" value="${listaTotal.fecha_entrada}"><br>
            </c:forEach>
                <input type="submit" value="Enviar modificacion">
        </form>

    </body>
</html>
