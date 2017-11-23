# BASE DE DATOS DBC PARA SISTEMA DE PUNTO DE VENTA

#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 # CREACION DE LA BASE DE DATOS
       CREATE DATABASE DBC;
       USE DBC;
 
#////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 # CREACION DE LAS TABLAS
CREATE TABLE login(
     id_login INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
     usuario VARCHAR(10),
     pasword VARCHAR(10)
);

CREATE TABLE productos(
      id_producto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
      producto VARCHAR(40),
      cantidad INT,
      presentacion VARCHAR(40),
      precio DOUBLE
);

CREATE TABLE proveedores(
  id_proveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(40),
  telefono INT,
  direccion VARCHAR(40),
  id_producto INT,
  
  CONSTRAINT proveedores_producto
  FOREIGN KEY (id_producto)
  REFERENCES productos(id_producto)
);

CREATE TABLE inventario(
 id_inventario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 fecha_proveedor DATE,
 fecha_agotado DATE,
 id_producto INT,
 
 CONSTRAINT inventario_productos
 FOREIGN KEY (id_producto)
 REFERENCES productos(id_producto)
);

#//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
# VALORES PREDETERMINADOR
 INSERT INTO login (usuario, pasword)
 VALUES ( 'admin', '12345' ),
                (  'user',    '0123');
                
 #///////////////////////////////////////////////////////////////////// PROCEDIMIENTOS ALMACENADOS /////////////////////////////////////////////////////////////
 
 # /////////////////////////////////////////////////////////////////////////////////////// LOGIN ///////////////////////////////////////////////////////////////////////////////////////////
 # PROCEDIMIENTO PARA CONSULTAR USUARIO
    DELIMITER $$
       CREATE PROCEDURE Consultar_usuario
        ( IN USUARIO VARCHAR(10) )
          BEGIN
          SELECT usuario FROM login WHERE usuario=USUARIO;
          END $$
      DELIMITER $$
      
 # PROCEDIMIENTO PARA CONSULTAR CONTRASEÑA
  DELIMITER $$
       CREATE PROCEDURE Consultar_contraseña
        ( IN CONTRASEÑA VARCHAR(10) )
          BEGIN
          SELECT paswor FROM login WHERE parwor=CONTRASEÑA;
          END $$
      DELIMITER $$
 
 # /////////////////////////////////////////////////////////////////////////// PRODUCTOS ///////////////////////////////////////////////////////////////////////////////////////////
  # PROCEDIMIENTO PARA INSERTAR
     DELIMITER $$
      CREATE PROCEDURE Insertar_producto
      ( IN PRODUCTO VARCHAR(40),
		IN CANTIDAD INT,
        IN PRESENTACION VARCHAR(40),
        IN PRECIO DOUBLE  )
        BEGIN
            INSERT INTO productos( producto, cantidad, presentacion, precio)
            VALUES ( PRODUCTO, CANTIDAD, PRESENTACION, PRECIO);
        END $$
     DELIMITER $$
  
  #PROCEDIMIENTO PARA ELIMINAR
     DELIMITER $$
	  CREATE PROCEDURE Eliminar_producto
      ( IN ID_PRODUCTOS INT,
        IN PRODUCTO VARCHAR(45)  )
        BEGIN
        DELETE FROM productos WHERE id_producto=ID OR producto=PRODUCTO;
        END $$
     DELIMITER $$
  
  # PROCEDIMIENTO PARA ACTUALIZAR
      DELIMITER $$
       CREATE PROCEDURE Actualizar_producto
         ( IN PRODUCTO VARCHAR(40),
		   IN CANTIDAD INT,
           IN PRESENTACION VARCHAR(40),
           IN PRECIO DOUBLE,
           IN ID INT  )
           BEGIN
           UPDATE productos SET
           producto=PRODUCTO,
           cantidad=CANTIDAD,
           presentacion=PRESENTACION,
           precio=PRECIO
           WHERE id_producto=ID OR producto=PRODUCTO;
           END $$
      DELIMITER $$
  
  # PROCEDIMIETO PARA CONSULTAR
      DELIMITER $$
       CREATE PROCEDURE Consultar_producto
        ( IN ID INT,
          IN PRODUCTO VARCHAR(40)  )
          BEGIN
          SELECT * FROM productos WHERE id_producto LIKE ID OR producto LIKE PRODUCTO;
          END $$
      DELIMITER $$
      
# ////////////////////////////////////////////////////////////////////////////////// PROVEEDORES ////////////////////////////////////////////////////////////////////////////////

# PROCEDIMIENTO PARA INSERTAR
   DELIMITER $$
      CREATE PROCEDURE Insertar_proveedores
      ( IN NOMBRE VARCHAR(40),
		IN TELEFONO INT,
        IN DIRECCION VARCHAR(40),
        IN ID_PRODUCTO INT  )
        BEGIN
            INSERT INTO proveedores( nombre, telefono, direccion, id_producto)
            VALUES ( NOMBRE, TELEFONO, DIRECCION, ID_PRODUCTO);
        END $$
     DELIMITER $$
     
# PROCEDIMIENTO PARA ELIMINAR
  DELIMITER $$
	  CREATE PROCEDURE Eliminar_proveedores
      ( IN ID INT,
        IN NOMBRE VARCHAR(40)  )
        BEGIN
        DELETE FROM proveedores WHERE id_proveedores=ID OR nombre=NOMBRE;
        END $$
     DELIMITER $$
     
# PROCEDIMIENTO PARA  ACTUALIZAR
   DELIMITER $$
       CREATE PROCEDURE Actualizar_proveedores
         ( IN NOMBRE VARCHAR(40),
		   IN TELEFONO INT,
           IN DIRECCION VARCHAR(40),
           IN ID_PRODUCTO INT,
           IN ID INT  )
           BEGIN
           UPDATE proveedores SET
           nombre=NOMBRE,
           telefono=TELEFONO,
           direccion=DIRECCION,
           id_producto=ID_PRODUCTO
           WHERE id_proveedor=ID OR nombre=NOMBRE;
           END $$
      DELIMITER $$

# PROCEDIMIENTO PARA CONSULTAR
 DELIMITER $$
       CREATE PROCEDURE Consultar_proveedores
        ( IN ID INT,
          IN NOMBRE VARCHAR(40)  )
          BEGIN
          SELECT * FROM proveedores WHERE id_proveedor=ID OR nombre=NOMBRE;
          END $$
      DELIMITER $$
   
# ///////////////////////////////////////////////////////////////////////////////////// INVENTARIO ////////////////////////////////////////////////////////////////////////////////////	

# PROCEDIMIENTO PARA INSERTAR
  DELIMITER $$
      CREATE PROCEDURE Insertar_inventario
      ( IN FECHA_PROVEEDOR DATE,
		IN FECHA_AGOTADO DATE,
        IN ID_PRODUCTO INT  )
        BEGIN
            INSERT INTO inventario( fecha_proveedor, fecha_agotado, id_producto )
            VALUES ( FECHA_PROVEEDOR, FECHA_AGOTADO, ID_PRODUCTO);
        END $$
     DELIMITER $$

# PROCEDIMIENTO PARA ELIMINAR
 DELIMITER $$
	  CREATE PROCEDURE Eliminar_inventario
      ( IN ID INT  )
        BEGIN
        DELETE FROM inventario WHERE id_inventario=ID;
        END $$
     DELIMITER $$

# PROCEDIMIENTO PARA ACTUALIZAR
    DELIMITER $$
       CREATE PROCEDURE Actualizar_inventario
         ( IN FECHA_PROVEEDOR DATE,
		   IN FECHA_AGOTADO DATE,
           IN ID_PRODUCTO INT,
           IN ID INT  )
           BEGIN
           UPDATE inventario SET
           fecha_proveedor=FECHA_PROVEEDOR,
           fecha_agotado=FECHA_AGOTADO,
           id_producto=ID_PRODUCTO
           WHERE id_inventario=ID;
           END $$
      DELIMITER $$

# PROCEDIMIENTO PARA CONSULTAR
   DELIMITER $$
       CREATE PROCEDURE Consultar_inventario
        ( IN ID INT  )
          BEGIN
          SELECT * FROM inventario WHERE id_inventario=ID;
          END $$
      DELIMITER $$
 
 # ////////////////////////////////////////////////////////////////////////// CONSULTAS ////////////////////////////////////////////////////////////////////////////////////
  
  SELECT * FROM productos;
  
  # DROP DATABASE DBC;
