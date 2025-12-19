/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test;

import dao.CursoDAO;
import dao.CursoDAOImpl;
import modelo.Curso;

/**
 *
 * @author Home
 */
public class test {

    public static void main(String[] args) {
        CursoDAO dao = new CursoDAOImpl();
        //dao.agregar(new Curso("Curso1","ggg","tec","img","video", true));
        //System.out.println("Curso encontrada: " + dao.buscar(2));
        dao.listar().forEach(System.out::println);
        //System.out.println("se desactivo el curso");
        //dao.eliminar(42);
        dao.cambiarEstado(20, true);
    }
}
