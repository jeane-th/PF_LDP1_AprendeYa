/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import dao.CursoDAO;
import dao.CursoDAOImpl;
import dao.UsuarioDAO;
import dao.UsuarioDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import modelo.Curso;
import modelo.Usuario;

/**
 *
 * @author jtafu
 */
@WebServlet(name = "PerfilServlet", urlPatterns = {"/perfil"})
public class PerfilServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtenemos la sesion sin crear una nueva
        HttpSession session = request.getSession(false);

        Usuario u = null;
        // validamos q la sesion exista
        if (session != null) {
            // Obtenemos el usuario de la sesion
            u = (Usuario) session.getAttribute("usuario");
        }
        // validamos que el usuario exista
        if (u == null) {
            response.sendRedirect("login.jsp");
            return;
        }
        CursoDAO dao = new CursoDAOImpl();
        List<Curso> cursos = dao.listar();
        System.out.println("Cantidad de cursos: " + cursos.size());
        cursos.forEach(c -> System.out.println(c.getTitulo()));
        System.out.println("Se ejecuto el GET");
        request.setAttribute("listaCursos", dao.listar());
        request.setAttribute("usuario", u);
        request.getRequestDispatcher("perfil.jsp").forward(request, response);
    }
}
