<%-- 
    Document   : ActualizaPro
    Created on : 06-04-2022, 11:23:54 PM
    Author     : ULISES CASTRO
--%>

<%@page import="modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Actualizar Producto</h1>
        <%
          
           if(request.getParameter("nom_producto")!=null&&request.getParameter("des_producto")!=null&&request.getParameter("des_producto")!=null&&request.getParameter("stock")!=null&&request.getParameter("precio")!=null&&request.getParameter("unidad_de_medida")!=null&&request.getParameter("estado_producto")!=null&&request.getParameter("categoria")!=null&&request.getParameter("fecha_entrada")){ 
              String id_producto=Integer.parsString(session.getAttribute("id_producto").toString());
              Producto Producto= new producto(id_producto,request.getParameter("nom_producto"),request.getParameter("des_producto"),request.getParameter("des_producto"),request.getParameter("stock"),request.getParameter("precio"),request.getParameter("unidad_de_medida")request.getParameter("estado_producto")request.getParameter("categoria"),request.getParameter("fecha_entrada")); 
              boolean""="". Actualizarproducto(producto);
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
