-- 1. Productos con el nombre de su categoría, ordenados por nombre (JOIN, ORDER BY)
SELECT p.id, p.nombre AS producto, c.nombre AS categoria, p.precio, p.stock
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
ORDER BY p.nombre ASC;

-- 2. Productos con menos de 5 unidades en stock (WHERE)
SELECT id, nombre, stock, precio
FROM productos
WHERE stock < 5;

-- 3. Precio promedio por categoría (GROUP BY, AVG)
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio
FROM productos p
JOIN categorias c ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE)
SELECT p.id AS pedido_id, c.nombre AS cliente, p.fecha, p.estado
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id
WHERE c.id = 1;

-- 5. Total en dinero de cada pedido (SUM, GROUP BY)
SELECT dp.pedido_id, SUM(dp.cantidad * dp.precio_unitario) AS total_dinero
FROM detalle_pedido dp
GROUP BY dp.pedido_id;

-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING)
SELECT c.id, c.nombre, COUNT(p.id) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre
HAVING COUNT(p.id) > 2;

-- 7. Eliminar un cliente sin pedidos (DELETE)
DELETE FROM clientes 
WHERE id NOT IN (SELECT DISTINCT cliente_id FROM pedidos);
