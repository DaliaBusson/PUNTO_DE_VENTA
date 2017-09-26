/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ventas;

/**
 *
 * @author Alumnos
 */
public class producto {
    private static String Codigo;
    private static String Nombre;
    public producto(String Codigo, String Nombre)
    {
      this.Codigo =Codigo;
      this.Nombre =Nombre;
       
    }
    public producto (){}
    public String getcodigo(){return Codigo;}
    public String getNombre(){return Nombre;}
}
