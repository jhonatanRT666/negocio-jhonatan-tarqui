-- 1. Inserción de Categorías (3)
INSERT INTO categorias (id, nombre) VALUES 
(1, 'Vidrios Templados'),
(2, 'Espejos Decorativos'),
(3, 'Accesorios y Herrajes');

-- 2. Inserción de Productos (12)
INSERT INTO productos (id, nombre, categoria_id, precio, stock) VALUES 
(1, 'Vidrio Templado 10mm (m2)', 1, 150.00, 25),
(2, 'Vidrio Templado 8mm (m2)', 1, 120.00, 4), 
(3, 'Vidrio Templado 6mm (m2)', 1, 95.00, 30),
(4, 'Vidrio Laminado 4+4', 1, 180.00, 15),
(5, 'Espejo Bronce Biselado', 2, 210.00, 8),
(6, 'Espejo Plateado Flotado', 2, 130.00, 3),
(7, 'Espejo LED Inteligente', 2, 450.00, 6),
(8, 'Kit de Herrajes para Puerta Batiente', 3, 320.00, 10),
(9, 'Manilla de Acero Inoxidable', 3, 45.00, 50),
(10, 'Perfil de Aluminio U', 3, 25.00, 100),
(11, 'Silicona Neutra Transparente', 3, 8.50, 2),
(12, 'Ruedas para Ventana Corrediza', 3, 12.00, 40);

-- 3. Inserción de Clientes (6)
INSERT INTO clientes (id, nombre, telefono, email) VALUES 
(1, 'Carlos Mamani', '70123456', 'carlos.mamani@gmail.com'),
(2, 'Ana Vargas', '71234567', 'ana.vargas@outlook.com'),
(3, 'Luis Quispe', '72345678', 'l.quispe@empresa.bo'),
(4, 'Maria Choque', '73456789', 'mchoque@yahoo.com'),
(5, 'Jorge Condori', '74567890', 'jorge.con@gmail.com'),
(6, 'Sofia Huanca', '75678901', 'sofia.huanca@hotmail.com');

-- 4. Inserción de Pedidos (10)
INSERT INTO pedidos (id, cliente_id, fecha, estado) VALUES 
(1, 1, '2026-10-01', 'Completado'),
(2, 1, '2026-10-05', 'Pendiente'),
(3, 1, '2026-10-10', 'En proceso'), 
(4, 2, '2026-10-02', 'Completado'),
(5, 2, '2026-10-08', 'Completado'), 
(6, 3, '2026-10-03', 'Cancelado'),
(7, 3, '2026-10-09', 'Completado'),
(8, 4, '2026-10-04', 'Completado'),
(9, 5, '2026-10-06', 'Pendiente'),
(10, 5, '2026-10-11', 'Completado');

-- 5. Inserción de Líneas de Detalle (25 registros exactos)
INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 2, 150.00), (1, 9, 4, 45.00), (1, 10, 10, 25.00),
(2, 3, 5, 95.00), (2, 11, 2, 8.50),
(3, 5, 1, 210.00), (3, 8, 1, 320.00),
(4, 2, 3, 120.00), (4, 12, 4, 12.00),
(5, 4, 2, 180.00), (5, 9, 2, 45.00), (5, 10, 5, 25.00),
(6, 7, 1, 450.00),
(7, 6, 2, 130.00), (7, 11, 3, 8.50), (7, 12, 5, 12.00),
(8, 1, 4, 150.00), (8, 3, 2, 95.00), (8, 8, 1, 320.00),
(9, 2, 1, 120.00), (9, 10, 8, 25.00), (9, 11, 4, 8.50),
(10, 5, 2, 210.00), (10, 7, 1, 450.00), (10, 9, 6, 45.00);
