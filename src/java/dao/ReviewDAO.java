package dao;

import java.util.List;
import modelo.Review;

public interface ReviewDAO {

    // Inserta una review; devuelve true si se insertó correctamente (y usuario está matriculado)
    boolean insertar(Review r);

    // Lista reviews de un curso ordenadas por fecha descendente
    List<Review> listarPorCurso(int idCurso);
    
    // Lista todas las reviews
    List<Review> listarTodos();

    // Promedio de valoraciones para el curso
    double obtenerPromedio(int idCurso);

    // Cuenta total de valoraciones para el curso
    int contarPorCurso(int idCurso);
    
    // Actualiza una review
    boolean actualizar(Review r);

    // Elimina una review
    boolean eliminar(int id);
    
    // Busca una review por ID
    Review buscarPorId(int id);

    // Inserta una review sin validar matricula (para admins)
    boolean insertarAdmin(Review r);
}
