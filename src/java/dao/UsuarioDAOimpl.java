/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Usuario;
import org.mindrot.jbcrypt.BCrypt;
import util.Conexion;

/**
 *
 * @author GamingWorld
 */
public class UsuarioDAOImpl implements UsuarioDAO {

    // Variables para la conexión
    Conexion cn;
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r; // variable auxiliar para respuestas

    @Override
    public Usuario validar(String email, String password) {
        Usuario u = null; // Inicializamos en null
        // OJO: Solo dejamos entrar si estado = 1 (Activo)
        String sql = "SELECT * FROM tb_usuarios WHERE email=? AND password=? AND estado=1";
        try {
            con = Conexion.getConnection(); // Asegúrate que tu método en Conexion se llame así
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                u = new Usuario();
                u.setIdUsuario(rs.getInt("id_usuario")); // Nota: En BD es id_usuario
                u.setNombre(rs.getString("nombre"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setRol(rs.getString("rol"));
                u.setEstado(rs.getInt("estado"));
            }
        } catch (Exception e) {
            System.err.println("Error en el login : " + e);
        }
        return u;
    }

    // Inicio de sesion
    @Override
    public Usuario login(String email,String password) {
        Connection con = null;
        PreparedStatement ps = null;
        try {
            String sql = "SELECT * FROM tb_usuarios WHERE email=? AND estado=1";
            con = Conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String hash = rs.getString("password");
                if (BCrypt.checkpw(password, hash)) {
                    Usuario u = new Usuario();
                    u.setIdUsuario(rs.getInt("id_usuario"));
                    u.setNombre(rs.getString("nombre"));
                    u.setEmail(rs.getString("email"));
                    u.setRol(rs.getString("rol"));
                    u.setEstado(rs.getInt("estado"));
                    return u;
                }
            }
        } catch (Exception e) {
            System.err.println("Error en el login : " + e);
        }
        return null;
    }

    @Override
    public List<Usuario> listar() {
        List<Usuario> lista = new ArrayList<>();
        String sql = "SELECT * FROM tb_usuarios";
        try {
            con = Conexion.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setIdUsuario(rs.getInt("id_usuario"));
                u.setNombre(rs.getString("nombre"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setRol(rs.getString("rol"));
                u.setEstado(rs.getInt("estado"));
                lista.add(u);
            }
        } catch (Exception e) {
            System.err.println("Error en listar: " + e);
        }
        return lista;
    }

    // INSERTAR es equivalente a REGISTRAR
    @Override
    public boolean insertar(Usuario usuario) {
        // Asumimos estado 1 (Activo) por defecto al crear
        String sql = "INSERT INTO tb_usuarios(nombre, email, password, rol, estado) VALUES(?,?,?,?,1)";
        try {
            con = Conexion.getConnection();
            // Importacion de la libreria para encriptar contraseñas
            // Usamos el metodo para cifrado, recibe 2 parametros (contraseña, vueltas de cifrado)
            // BCrypt.gensalt(): numero aleatorio de saltos
            String hash = BCrypt.hashpw(usuario.getPassword(), BCrypt.gensalt());
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getEmail());
            // cambio el Password normal al cifrado
            //ps.setString(3, usuario.getPassword());
            ps.setString(3, hash);
            ps.setString(4, "usuario"); // estudiante por defecto
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.err.println("Error en insertar: " + e);
        }
        return false;
    }

    @Override
    public boolean actualizar(Usuario usuario) {
        // Actualizamos todo EXCEPTO el id
        String sql = "UPDATE tb_usuarios SET nombre=?, email=?, password=?, rol=?, estado=? WHERE id_usuario=?";
        try {
            con = Conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuario.getNombre());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, usuario.getPassword());
            ps.setString(4, usuario.getRol());
            ps.setInt(5, usuario.getEstado()); // Aquí permitimos editar el estado manualmente si se quiere
            ps.setInt(6, usuario.getIdUsuario()); // El WHERE necesita el ID
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.err.println("Error en actualizar: " + e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        // AQUÍ ESTÁ EL TRUCO: No usamos DELETE, usamos UPDATE para cambiar estado a 0
        String sql = "UPDATE tb_usuarios SET estado=0 WHERE id_usuario=?";
        try {
            con = Conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.err.println("Error en eliminar (baja lógica): " + e);
        }
        return false;
    }

    @Override
    public Usuario obtenerPorId(int id) {
        Usuario u = null;
        String sql = "SELECT * FROM tb_usuarios WHERE id_usuario=?";
        try {
            con = Conexion.getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                u = new Usuario();
                u.setIdUsuario(rs.getInt("id_usuario"));
                u.setNombre(rs.getString("nombre"));
                u.setEmail(rs.getString("email"));
                u.setPassword(rs.getString("password"));
                u.setRol(rs.getString("rol"));
                u.setEstado(rs.getInt("estado"));
            }
        } catch (Exception e) {
            System.err.println("Error al obtener por ID: " + e);
        }
        return u;
    }
}
