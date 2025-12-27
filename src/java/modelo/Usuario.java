/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author GamingWorld
 */
public class Usuario {

    // 1. ATRIBUTOS (Espejo de tu tabla en la imagen)
    private int idUsuario;     
    private String nombre;
    private String email;
    private String password;
    private String pais;
    private String rol;         // Nuevo campo que vi en tu imagen
    private int estado;         // 1=Activo, 0=Inactivo

    // 2. CONSTRUCTOR VACÍO
    public Usuario() {
    }

    public Usuario(int idUsuario, String nombre, String email, String password, String pais, String rol, int estado) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.email = email;
        this.password = password;
        this.pais = pais;
        this.rol = rol;
        this.estado = estado;
    }

    public Usuario(String nombre, String email, String password, String pais, String rol, int estado) {
        this.nombre = nombre;
        this.email = email;
        this.password = password;
        this.pais = pais;
        this.rol = rol;
        this.estado = estado;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

}
   