package conexion1;
import java.sql.*;
import javax.swing.JOptionPane;

// CLASE QUE PERMITE LA CONEXION CON LA BASE DE DATOS

public class conectar {
    
    private Connection con=null;
    
    public Connection conexion() throws SQLException{
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://CONECTION:3306/CONECTION","root","pollo");
        }catch(ClassNotFoundException | SQLException e){   
        }
        return con;
    } 

public void cerrarConexion (Connection con){
   try{
       con.close();
   }catch(SQLException e){
       JOptionPane.showMessageDialog(null,"ERROR MODULO CONECTION / NO HAY COMUNICACION");
   }
}

}