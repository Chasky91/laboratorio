#!/bin/bash

mysql -h miSQLLab -u root -p -D laboratorio -e "USE laboratorio;
  CREATE TABLE Personal (
     ID_Personal INT PRIMARY KEY AUTO_INCREMENT,
     Nombre VARCHAR(100) NOT NULL,
     Apellido VARCHAR(100) NOT NULL,
     Puesto VARCHAR(50) NOT NULL,
     Fecha_Contratacion DATE NOT NULL,
     Telefono VARCHAR(20),
     Email VARCHAR(100)
 );


 CREATE TABLE Muestras (
     ID_Muestra INT PRIMARY KEY AUTO_INCREMENT,
     Codigo_Muestra VARCHAR(50) UNIQUE NOT NULL,
     Tipo VARCHAR(50) NOT NULL,
     Fecha_Recoleccion DATETIME NOT NULL,
     Nombre_Paciente VARCHAR(255) NOT NULL,
     ID_Personal_Recolecto INT,
     FOREIGN KEY (ID_Personal_Recolecto) REFERENCES Personal(ID_Personal)
 );


 CREATE TABLE Pruebas (
     ID_Prueba INT PRIMARY KEY AUTO_INCREMENT,
     Nombre_Prueba VARCHAR(100) NOT NULL,
     Descripcion TEXT,
     Metodo VARCHAR(100)
 );
"