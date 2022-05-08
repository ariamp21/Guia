CREATE TABLE COMPRAS (
    ID int AUTO_INCREMENT AUTO_INCREMENT KEY,
    NUMERO_ORDEN int NOT NULL,
    CLIENTE_ID int,
    FOREIGN KEY (CLIENTE_ID) REFERENCES CLIENTES(ID)
);

INSERT INTO COMPRAS (NUMERO_ORDEN, CLIENTE_ID)
VALUES(2782872,1),
      (2782873,3),
      (2782874,4),
      (2782875,1);
	 
SELECT * FROM COMPRAS c 

#####################################

CREATE TABLE TIPO_PRODUCTO(
ID INT AUTO_INCREMENT AUTO_INCREMENT KEY,
NOMBRE varchar(25),
DESCRIPCION varchar(50),
FECHA_CREACION DATE
);

SELECT * FROM TIPO_PRODUCTO

INSERT INTO TIPO_PRODUCTO (ID,NOMBRE,DESCRIPCION,FECHA_CREACION)
VALUES(1, 'Accesorios','Elementos complementarios de la temporada','2020-01-20'),
	  (2, 'Eco','Artículos ecológicos','2021-05-05'),
	  (3, 'Entretención','Productos de pasatiempo y juegos de mesa','2016-06-21'),
	  (4, 'Libros','Obras de autores nacionales e internacionales','2018-10-18'),
	  (5, 'Mascotas','Accesorios de cuidado animal','2017-05-08'),
	  (6, 'Música', 'Gran variedad de instrumentos','2022-02-02'),
	  (7, 'Robótica','Productos motrices con inteligencia','2017-04-01'),
	  (8, 'Tecnología', 'Elementos innovadores para el diario vivir','2019-03-06');


#####################################

CREATE TABLE PRODUCTOS(
ID INT AUTO_INCREMENT AUTO_INCREMENT KEY,
PRODUCTO varchar(25),
TIPO_PRODUCTO_ID INT,
FOREIGN KEY (TIPO_PRODUCTO_ID) REFERENCES TIPO_PRODUCTO(ID)
);


SELECT * FROM PRODUCTOS

INSERT INTO PRODUCTOS (PRODUCTO, TIPO_PRODUCTO_ID)
VALUES('El kybalion',4),
	  ('Los cuatro acuerdos',4),
	  ('Aspiradora inteligente',7),
	  ('Bajo',6);
	  
#####################################

CREATE TABLE DETALLE_COMPRA(
COMPRA_ID INT,
PRODUCTO_ID INT
)

ALTER TABLE DETALLE_COMPRA
	ADD CONSTRAINT FK_COMPRA_ID
		FOREIGN KEY (COMPRA_ID) REFERENCES COMPRAS (ID);

ALTER TABLE DETALLE_COMPRA
	ADD CONSTRAINT FK_PRODUCTO_ID
		FOREIGN KEY (PRODUCTO_ID) REFERENCES PRODUCTOS (ID);
	
ALTER TABLE DETALLE_COMPRA MODIFY COMPRA_ID int NOT NULL;

ALTER TABLE DETALLE_COMPRA MODIFY PRODUCTO_ID int NOT NULL;

ALTER TABLE DETALLE_COMPRA MODIFY CANTIDAD int NOT NULL;


SELECT * FROM DETALLE_COMPRA

