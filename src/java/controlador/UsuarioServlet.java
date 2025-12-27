/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import dao.UsuarioDAO;
import dao.UsuarioDAOImpl;
import modelo.Usuario;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author GamingWorld
 */
@WebServlet(name = "UsuarioServlet", urlPatterns = {"/UsuarioServlet"})

public class UsuarioServlet extends HttpServlet {
    private final UsuarioDAO dao = new UsuarioDAOImpl();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "actualizar":
                    actualizarUsuario(request, response);
                    break;
                    
                case "bloquear":
                    int idBloquear = Integer.parseInt(request.getParameter("id_usuario"));

                    dao.cambiarEstado(idBloquear, 0);

                    response.sendRedirect("usuarioPanel.jsp");
                    break;
                case "eliminar":
                    break;
                default:
                    response.sendRedirect("usuarioPanel.jsp");
            }
        } else {
            response.sendRedirect("usuarios.jsp");
        }
    }

    private void actualizarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id_usuario")); 
            String nombre = request.getParameter("nombre");
            String email = request.getParameter("email");
            
           String rol = request.getParameter("rol"); 
            
           int estado = Integer.parseInt(request.getParameter("estado"));

            Usuario u = new Usuario();
            u.setId_usuario(id);
            u.setNombre(nombre);
            u.setEmail(email);
            u.setRol(rol);
            u.setEstado(estado);

            boolean exito = dao.actualizar(u);

            if (exito) {
                request.getSession().setAttribute("mensaje", "Usuario actualizado correctamente.");
            } else {
                request.getSession().setAttribute("error", "No se pudo actualizar el usuario.");
            }
            
            response.sendRedirect("usuarioPanel.jsp");

                } catch (NumberFormatException e) {
                    System.out.println("Error al convertir números: " + e.getMessage());
                    response.sendRedirect("usuarioPanel.jsp?error=datos_invalidos");
                } catch (Exception e) {
                    System.out.println("Error general: " + e.getMessage());
                    e.printStackTrace();
                    response.sendRedirect("usuarioPanel.jsp?error=desconocido");
                }
            }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
