/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import java.sql.*;
import modelo.Curso;
import util.Conexion;

/**
 *
 * @author Home
 */
public class CursoDAOImpl implements CursoDAO {

    @Override
    public boolean agregar(Curso c) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Curso> listar() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
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
            System.out.println("Error al buscar estudiante: " + e.getMessage());
        }
        return null;
    }

    @Override
    public boolean actualizar(Curso c) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int idCurso) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
