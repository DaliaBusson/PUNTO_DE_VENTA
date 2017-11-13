# BASE DE DATOS CONECTION

 # CREACION DE LA BASE DE DATOS
       CREATE DATABASE DBC;
       USE DBC;
 
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
  nombre_proveedor VARCHAR(40),
  telefono INT,
  direccion VARCHAR(40),
  id_producto INT,
  
  CONSTRAINT proveedores_producto
  FOREIGN KEY (id_producto)
  REFERENCES productos(id_producto)
);

CREATE TABLE inventario(
 id_inventario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 id_producto INT,
 fecha_provedor DATE,
 fecha_agotado DATE,
 
 CONSTRAINT inventario_productos
 FOREIGN KEY (id_producto)
 REFERENCES productos(id_producto)
);

 #///////////////////////////////////////////////////////////////////// PROCEDIMIENTOS ALMACENADOS //////////////////////////////////////////////////////////////////
 
 # /////////////////////////////////////////////////////////////////////////// PRODUCTOS //////////////////////////////////////////////////////////////////////////////////////////
 
  # PROCEDIMIENTO PARA INSERTAR
     DELIMITER $$
      CREATE PROCEDURE Insertar_producto
      ( IN PRODUCTO VARCHAR(40),
		IN CANTIDAD INT,
        IN PRESENTACION VARCHAR(40),
        IN PRECIO DOUBLE  )
        BEGIN
            INSERT INTO productos( productos, cantidad, presentacion, precio)
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
           WHERE id_producto=ID;
           END $$
      DELIMITER $$
  
  # PROCEDIMIETO PARA CONSULTAR
      DELIMITER $$
       CREATE PROCEDURE Consultar_producto
        ( IN ID INT,
          IN PRODUCTO VARCHAR(40)  )
          BEGIN
          SELECT * FROM productos WHERE id_producto=ID OR producto=PRODUCTO;
          END $$
      DELIMITER $$
      
# ////////////////////////////////////////////////////////////////////////////////// PROVEEDORES ////////////////////////////////////////////////////////////////////////////

# PROCEDIMIENTO PARA INSERTAR
   DELIMITER $$
      CREATE PROCEDURE Insertar_proveedor
      ( IN PRODUCTO VARCHAR(40),
		IN CANTIDAD INT,
        IN PRESENTACION VARCHAR(40),
        IN PRECIO DOUBLE  )
        BEGIN
            INSERT INTO productos( productos, cantidad, presentacion, precio)
            VALUES ( PRODUCTO, CANTIDAD, PRESENTACION, PRECIO);
        END $$
     DELIMITER $$
     
     
      
      #   DROP DATABASE DBC;
    
# ///////////////////////////////////////////////////////////////////////////// TRIGGERS //////////////////////////////////////////////////////////////////////////////////////////////////////
SELECT * FROM productos;
