<%-- 
    Document   : ActualizarCate
    Created on : 06-04-2022, 11:24:17 PM
    Author     : ULISES CASTRO
--%>

<%@page import="modelo.categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualizar Categoria</h1>
        <%
          
           if(request.getParameter("nom_categoria")!=null&&request.getParameter("estado_categoria")){ 
              String id_categoria=Integer.parseString(session.getAttribute("id_categoria").toString());
              categoria categoria= new categoria(id_categoria,request.getParameter("nom_categoria"),request.getParameter("estado_categoria")); 
              boolean""="". Actualizacategoria(categoria);
              session.invalidate();
              if(respuesta=false)
                  out.println("Datos Actualizados"+"nombre del....");
              out.println("<a href=´index.jsp>´ver los cambios");
              else
                  out.println("Datos Actualizados"+"nombre del..");
            
            %>
            <a href="index.jsp">Ver los cambios</a>
            }
            <%
                } else
                out.println("<a href=´index.jsp>´ver los cambios");
                %>

    </body>
</html>
