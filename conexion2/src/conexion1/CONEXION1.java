package conexion1; //PAQUETERIA DEL PROGRAMA
 import java.awt.Image;
 import java.awt.Toolkit;

public class CONEXION1 {  //CLASE PRINCIPAL
    
public Image getIconImage() {
 Image retValue = Toolkit.getDefaultToolkit().getImage(ClassLoader.getSystemResource("conexion1.IMAGENES/logohp.png"));
 return retValue;
 }
    boolean stado=false; //VARIABLE UTILIADA PARA CONTROL DE ACCESO
    
    public static void main(String[] args) {
        
    LOGIN windows=new LOGIN();
    windows.setVisible(true);     //abilita la ventana DE LOGIN

    
    
    }
}
// MODULO TERMINADO!!!