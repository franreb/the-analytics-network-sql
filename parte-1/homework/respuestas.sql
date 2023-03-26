-- 1 .Mostrar todos los productos dentro de la categoria electro junto con todos los detalles.

select * from product_master
where categoria = 'Electro'


-- 2 Cuales son los producto producidos en China?

select * from product_master 
where origen = 'China';

-- 3 Mostrar todos los productos de Electro ordenados por nombre.

select * from product_master
order by nombre asc;


-- 4 Cuales son las TV que se encuentran activas para la venta?

select * from product_master
where is_active = 'true' 
and subcategoria = 'TV'


-- 5 Mostrar todas las tiendas de Argentina ordenadas por fecha de apertura de las mas antigua a la mas nueva.

select * from store_master
where pais = 'Argentina' and fecha_apertura is not null
order by fecha_apertura;

-- 6 Cuales fueron las ultimas 5 ordenes de ventas?

select top 5 * from order_line_sale
order by fecha desc;

-- 7 Mostrar los primeros 10 registros de el conteo de trafico por Super store ordenados por fecha.

select top 10 * from super_store_count
order by fecha;

-- 8 Cuales son los producto de electro que no son Soporte de TV ni control remoto.

select * from product_master 
where subsubcategoria != 'Soporte' and subsubcategoria != 'Control Remoto';

-- 9 Mostrar todas las lineas de venta donde el monto sea mayor a $100.000 solo para transacciones en pesos.

select * from order_line_sale
where venta > 100000 and moneda = 'ARS'

-- 10Mostrar todas las lineas de ventas de Octubre 2022.

select * from order_line_sale 
where year(fecha) = 2022 and month(fecha) = 10;

-- 11 Mostrar todos los productos que tengan EAN.

select * from product_master
where ean is not null;


-- 12 Mostrar todas las lineas de venta que que hayan sido vendidas entre 1 de Octubre de 2022 y 10 de Noviembre de 2022.

select * from order_line_sale
where fecha between '2022-10-01' and '2022-11-10'
