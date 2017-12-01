// MODULO DE CONECCION
package conexion1;
import java.sql.*;
import javax.swing.JOptionPane;


public class conectar {
    Connection conectar=null;
    
    public Connection conexion() throws ClassNotFoundException{
     try{
         Class.forName("org.gjt.mm.mysql.Driver");
         conectar=DriverManager.getConnection("jdbc:mysql://localhost/DBC","root","pollo");
     }catch(SQLException ex){
       JOptionPane.showMessageDialog(null, "Error de conexion Base de Datos");
     }  
       return conectar;  
    } 
}
 // MODULO TERMINADO