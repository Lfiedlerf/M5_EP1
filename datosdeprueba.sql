-- Ejecutar para obtener datos de prueba
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    rut VARCHAR(12) PRIMARY KEY,
    nombre VARCHAR(20),
    edad INTEGER
);

-- Insertar datos 'semilla' para prueba de consultas
INSERT INTO clientes (rut, nombre, edad) VALUES 
('13133133-3', 'Juan Pérez', 28),
('11222333-1', 'Mario Lopez', 30),
('13555666-K', 'Diego Diaz', 22),
('18999000-5', 'Pepa Pig', 80),
('99888777-2', 'Marta Sanchez', 35),
('15444333-1', 'Pato Donald', 45),
('12345678-9', 'Pedro Pascal', 38),
('11111111-1', 'Ana Silva', 24);