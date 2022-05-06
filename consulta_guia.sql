

use jarvis;

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


#Otra tabla de productos que se asocien con estas categorias: id 

CREATE TABLE PRODUCTOS(
ID INT AUTO_INCREMENT AUTO_INCREMENT KEY,
PRODUCTO varchar(25)
);

SELECT * FROM PRODUCTOS

#asociar compra con productos - tabla intermedia de uno a muchos--- detalle_compra:  compra_id  productos_id
#compra_id es el id de tbl compras, productos id, id de tabla productos
#Sin id de categoria, tendria que relacionar con el id de compra y ahi entender de a donde sale la categoria
#con un join me imagino


CREATE TABLE DETALLE_COMPRA(
COMPRA_ID INT,
PRODUCTO_ID INT
)

SELECT * FROM DETALLE_COMPRA


