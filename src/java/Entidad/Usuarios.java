
package Entidad;


public class Usuarios {
  
  int id_usu;
String nombre,apellido;

public Usuarios(){
    
}

    public Usuarios(int id_usu, String nombre, String apellido) {
        this.id_usu =id_usu;
        this.nombre = nombre;
        this.apellido=apellido;
    }

    public int getId_usu() {
        return id_usu;
    }

    public void setId_usu(int id_usu) {
        this.id_usu = id_usu;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

}
