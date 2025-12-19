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
        System.out.println("Curso encontrada: " + dao.buscar(21));

        //Curso c = new Curso();
        //c.setTitulo("curso1");
        //c.setDescripcion("ggggg");
        //c.setCategoria("Tec");
        //c.setImagen("curso1.jsp");
        //c.setVideo("curso1.url");
        //System.out.println("Curso agregado: " + dao.agregar(c));
        //System.out.println("Lista de cursos: ");
        //for (Curso c : dao.listar()) {
        //    System.out.println(c);
        //}
        Curso c = new Curso();
        c.setIdCurso(21);
        c.setTitulo("curso2");
        c.setDescripcion("hhjjjjj");
        c.setCategoria("Tec");
        c.setImagen("curso1.jsp");
        c.setVideo("curso1.url");
        c.setEstado(false);
        System.out.println("Curso actualizado: " + dao.actualizar(c));
    }
}
