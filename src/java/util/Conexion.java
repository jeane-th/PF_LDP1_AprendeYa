/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Home
 */
public class Conexion {


    /*private static final String URL = "jdbc:mysql://bhofdycde3nrmo12f1zd-mysql.services.clever-cloud.com:3306/bhofdycde3nrmo12f1zd";
    private static final String USER = "uwerzwhyzlodeacv";
    private static final String PASSWORD = "JUeJE6Aq6iyy0YrmYnxT";*/

    private static final String URL = System.getProperty("DB_URL");
    private static final String USER = System.getProperty("DB_USER");
    private static final String PASSWORD = System.getProperty("DB_PASS");

    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Se conectó a la base de datos");
        } catch (Exception ex) {
            System.out.println("Error de conexión: " + ex.getMessage());
        }
        return con;
    }

}

//-DDB_URL=jdbc:mysql://switchyard.proxy.rlwy.net:27477/railway -DDB_USER=root -DDB_PASS=IQzFpuRljoPwvCaCLYlDsxwxasbMhveu

//mysql://root:hfFQBDBSllggeMedKrCYDaApxHsDeUQN@ballast.proxy.rlwy.net:59771/railway
