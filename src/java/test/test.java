/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package test;

import dao.CursoDAO;
import dao.CursoDAOImpl;

/**
 *
 * @author Home
 */
public class test {

    public static void main(String[] args) {
        CursoDAO dao = new CursoDAOImpl();
        System.out.println("Curso encontrada: " + dao.buscar(5));
    }
}
