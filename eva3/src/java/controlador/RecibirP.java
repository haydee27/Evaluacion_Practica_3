package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Producto;

public class RecibirP extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("txtid");
        String nombre = request.getParameter("txtnom");
        String descuento = request.getParameter("txtdes");
        String stk= request.getParameter("txtstock");
        String prcio= request.getParameter("txtprecio");
        String unidadMedida = request.getParameter("txtunida_medida");
        String estado = request.getParameter("txtEstado");
        String cate= request.getParameter("txtcategoria");
        String fe = request.getParameter("txtfecha_entrada");
        
        Producto produc = new Producto();
        produc.setId_producto(id);
        produc.setNom_producto(nombre);
        produc.setDes_producto(descuento);
        produc.setStock(stk);
        produc.setPrecio(prcio);
        produc.setUnidad_de_medida(unidadMedida);
        produc.setEstado_producto(estado);
        produc.setCategoria(cate);
        produc.setFecha_entrada(fe);
        
        if(produc.insertarDatos() == true) {
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
