/*
Sistema de ventas 
 */
package systemstore;

public class SYSTEMSTORE {

public SYSTEMSTORE(){
}
    public static void main(String[] args) {
     LOGIN l=new LOGIN();
     l.validar();
    LOGIN windows=new LOGIN();
    windows.setTitle("SYSTEM STORE");
    windows.setVisible(true);
    l.validar();
    } 
}
