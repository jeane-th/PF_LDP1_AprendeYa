/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controlador;

import dao.ReviewDAO;
import dao.ReviewDAOImpl;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.Review;

/**
 *
 * @author jtafu
 */
@WebServlet(name = "ComentarioServlet", urlPatterns = {"/ComentarioServlet"})
public class ComentarioServlet extends HttpServlet {

    private ReviewDAO reviewDAO = new ReviewDAOImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null && accion.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            reviewDAO.eliminar(id);
            response.sendRedirect("comentariosAdmin.jsp");
        } else {
            response.sendRedirect("comentariosAdmin.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "crear":
                    crearComentario(request);
                    break;
                case "actualizar":
                    actualizarComentario(request);
                    break;
            }
        }
        response.sendRedirect("comentariosAdmin.jsp");
    }

    private void crearComentario(HttpServletRequest request) {
        try {
            int idCurso = Integer.parseInt(request.getParameter("idCurso"));
            int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
            String comentario = request.getParameter("comentario");
            int valoracion = Integer.parseInt(request.getParameter("valoracion"));

            Review r = new Review();
            r.setIdCurso(idCurso);
            r.setIdUsuario(idUsuario);
            r.setComentario(comentario);
            r.setValoracion(valoracion);
            
            // Aquí no validamos si el usuario está matriculado, es una creación de admin
            String insertSql = "INSERT INTO reviews(idCurso, idUsuario, comentario, valoracion, fecha) VALUES(?,?,?,?,NOW())";
            // Para no replicar la lógica de insert, podríamos crear un método en el DAO que no valide la matrícula
            // Por simplicidad, por ahora usamos el insertar que valida. Si se requiere que el admin pueda saltarse eso,
            // se necesitaría un nuevo método en el DAO.
            reviewDAO.insertarAdmin(r);

        } catch (NumberFormatException e) {
            System.err.println("Error de formato de número en ComentarioServlet: " + e.getMessage());
        }
    }

    private void actualizarComentario(HttpServletRequest request) {
        try {
            int idReview = Integer.parseInt(request.getParameter("idReview"));
            int idCurso = Integer.parseInt(request.getParameter("idCurso"));
            int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
            String comentario = request.getParameter("comentario");
            int valoracion = Integer.parseInt(request.getParameter("valoracion"));

            Review r = new Review();
            r.setIdReview(idReview);
            r.setIdCurso(idCurso);
            r.setIdUsuario(idUsuario);
            r.setComentario(comentario);
            r.setValoracion(valoracion);

            reviewDAO.actualizar(r);

        } catch (NumberFormatException e) {
            System.err.println("Error de formato de número en ComentarioServlet: " + e.getMessage());
        }
    }

    @Override
    public String getServletInfo() {
        return "Servlet para gestionar los comentarios (reviews) desde el panel de administración.";
    }
}
