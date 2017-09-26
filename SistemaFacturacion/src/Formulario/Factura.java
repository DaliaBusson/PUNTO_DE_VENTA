/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Formulario;

/**
 *
 * @author DULCE MARIA
 */
class Factura extends Producto {
     private  static int NumeroFactura;
    private  static String Fecha;
    private  static Double Precio;
    private static int Cantidad;
    
    public  Factura (int NumeroFactura, String Fecha,String Nombre, String Codigo,  Double Precio, int Cantidad)
    {
        super(Codigo, Nombre);
        this.NumeroFactura = NumeroFactura;
        this.Fecha =Fecha;
        this.Precio =Precio;
        this.Cantidad =Cantidad;
    }
    
    public   Factura(){}
    public int getNumeroFactura() 
    {return NumeroFactura;}
    public String getFecha() 
    {return Fecha;}
    public Double getPrecio()
    {return Precio;}
    public int getCantidad()
    {return Cantidad;}
    
}
