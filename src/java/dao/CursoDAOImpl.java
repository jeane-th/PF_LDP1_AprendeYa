/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Curso;
import util.Conexion;

/**
 *
 * @author Home
 */
public class CursoDAOImpl implements CursoDAO {

    @Override
    public boolean agregar(Curso c) {
        try {
            //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
            String sql = "INSERT INTO tb_cursos(titulo, descripcion, categoria,imagen, video, estado)"
                    + "VALUES(?,?,?,?,?,?)";

            Connection conecDB = Conexion.getConnection();
            PreparedStatement ps = conecDB.prepareStatement(sql);
            ps.setString(1, c.getTitulo());
            ps.setString(2, c.getDescripcion());
            ps.setString(3, c.getCategoria());
            ps.setString(4, c.getImagen());
            ps.setString(5, c.getVideo());
            ps.setBoolean(6, true); // activo por defecto
            int filas = ps.executeUpdate();
            return filas > 0;
        } catch (Exception e) {
            System.out.println("Error al agregar curso: " + e.getMessage());
            return false;
        }
    }

    @Override
    public List<Curso> listar() {
        List<Curso> lista = new ArrayList<>();
        try {
            //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
            String sql = "SELECT *FROM tb_cursos;";
            Connection conecDB = Conexion.getConnection();
            PreparedStatement ps = conecDB.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Curso c = new Curso();
                c.setIdCurso(rs.getInt("idCurso"));
                c.setTitulo(rs.getString("titulo"));
                c.setDescripcion(rs.getString("descripcion"));
                c.setCategoria(rs.getString("categoria"));
                c.setImagen(rs.getString("imagen"));
                c.setVideo(rs.getString("video"));
                c.setEstado(rs.getBoolean("estado"));
                lista.add(c);
            }

        } catch (Exception e) {
            System.out.println("Error al listar los cursos: " + e.getMessage());
        }
        return lista;
    }

    @Override
    public Curso buscar(int idCurso) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
        String sql = "select * from tb_cursos where idCurso = ?";
        try {
            Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, idCurso);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Curso(
                        rs.getInt("idCurso"),
                        rs.getString("titulo"),
                        rs.getString("descripcion"),
                        rs.getString("categoria"),
                        rs.getString("imagen"),
                        rs.getString("video"),
                        rs.getBoolean("estado")
                );
            }
        } catch (Exception e) {
            System.out.println("Error al buscar curso: " + e.getMessage());
        }
        return null;
    }

    @Override
    public boolean actualizar(Curso c) {
        try {
            //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
            String sql = "UPDATE tb_cursos SET titulo = ?, descripcion = ?, categoria = ?, imagen = ?, video = ?, estado = ? WHERE idCurso = ?;";
            Connection con = Conexion.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, c.getTitulo());
            ps.setString(2, c.getDescripcion());
            ps.setString(3, c.getCategoria());
            ps.setString(4, c.getImagen());
            ps.setString(5, c.getVideo());
            ps.setBoolean(6, c.isEstado());
            ps.setInt(7, c.getIdCurso());
            int filas = ps.executeUpdate();
            return filas > 0;
        } catch (Exception e) {
             System.out.println("Error al actualizar curso: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean eliminar(int idCurso) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean cambiarEstado(int idCurso) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Curso> listarCategoria(String Categoria) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
