/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import modelo.Usuario;

/**
 *
 * @author GamingWorld
 */
public interface UsuarioDAO {
    
    // Para entrar al sistema
    public Usuario validar(String email, String password);
    
    // Para mostrar la tabla en tu página
    public List<Usuario> listar();
    
    // Para guardar uno nuevo (siempre es bueno tenerlo)
    public boolean insertar(Usuario usuario);
    
    // LO QUE PEDISTE:
    // Para guardar cambios (Nombre, Email, Rol, etc.)
    public boolean actualizar(Usuario usuario);
    
    // Para desactivar un usuario (Cambiar estado a 0)
    public boolean eliminar(int id);
    
    // Extra: Para cargar los datos en el Modal antes de editar
    public Usuario obtenerPorId(int id);
    
    
    
}
