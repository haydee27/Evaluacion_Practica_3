 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
      
        if(Integer.parseString(request.getParameter("id_categoria"))!=0&&request.getParameter("nom_categoria")!=null&&request.getParameter("estado_categoria")){
            session.setAttribute("id_categoria", (Integer.parseInt(request.getParameter("id_categoria")));
            }
            %>
        <h1>Modificar Categoria</h1>
        <form action="Actualizarcate.jsp" method="post">
            <c:forEach var="listaTotal" items="${sessionScope.categoria}">
                <input type="text" name="txtid_categoria" value="${listaTotal.id_categoria}" readonly="true"><br>
                <input type="text" name="txtnom_categoria" value="${listaTotal.nom_categoria}"><br>
                <input type="text" name="txtestado_categoria" value="${listaTotal.estado_categoria}"><br>
                <
            </c:forEach>
                <input type="submit" value="Modificar">
        </form>
    </body>
</html>
