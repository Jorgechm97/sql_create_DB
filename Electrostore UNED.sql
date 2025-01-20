-- this script create a schema ElectroStore name
CREATE SCHEMA ElectroStore;

-- this script use ElectroStore schema
USE ElectroStore;

-- this script crate table of stores organization ElectroStore
CREATE TABLE Tiendas(
idTiendas INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
telefono VARCHAR(15),
correoElectronico VARCHAR(50),
dirección VARCHAR(100) NOT NULL
);

-- this script create position table

CREATE TABLE Cargos (
    idCargo INT AUTO_INCREMENT PRIMARY KEY,
    nombreCargo VARCHAR(50) NOT NULL
);

-- this script create empleoyes table

CREATE TABLE Empleados (
    idEmpleado INT AUTO_INCREMENT PRIMARY KEY,
    codigoEmpleado INT NOT NULL,
    identificacion VARCHAR(15) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    fechaContratacion DATE,
    idTiendas INT,
    idCargo INT,
    FOREIGN KEY (idTiendas) REFERENCES Tiendas(idTiendas),
    FOREIGN KEY (idCargo) REFERENCES Cargos(idCargo)
);

-- this script create category table
CREATE TABLE Categorias (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    nombreCategoria VARCHAR(50) NOT NULL
);


-- -- this script create brand table
CREATE TABLE Marcas (
    idMarca INT AUTO_INCREMENT PRIMARY KEY,
    nombreMarca VARCHAR(50) NOT NULL
);

-- this script create product table

CREATE TABLE Productos (
    idProducto INT AUTO_INCREMENT PRIMARY KEY,
    codigoProducto INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    cantidadStock INT NOT NULL,
    idMarca INT,
    idCategoria INT,
    FOREIGN KEY (idMarca) REFERENCES Marcas(idMarca),
    FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria)
);


-- this script create customer information table

CREATE TABLE Clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    identificacionCliente VARCHAR(20) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    telefono VARCHAR(15),
    direccion VARCHAR(100),
    correoElectronico VARCHAR(50) UNIQUE
);

-- this script create invoice head table

CREATE TABLE EncabezadoFactura (
    idFactura INT AUTO_INCREMENT PRIMARY KEY,
    numeroFactura INT UNIQUE NOT NULL,
    fechaEmision DATE NOT NULL,
    idCliente INT,
    idEmpleado INT,
    idTiendas INT,
    totalPagar DECIMAL(10,2) NOT NULL,
    fechaEntrega DATE,
    estadoFactura ENUM('pendiente', 'pagada', 'anulada') NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
    FOREIGN KEY (idEmpleado) REFERENCES Empleados(idEmpleado),
    FOREIGN KEY (idTiendas) REFERENCES Tiendas(idTiendas)
);

-- this script create detail invoice table

CREATE TABLE DetalleFactura (
    idItem INT AUTO_INCREMENT PRIMARY KEY,
    idFactura INT,
    idProducto INT,
    cantidad INT NOT NULL,
    precioUnitario DECIMAL(10,2) NOT NULL,
    descuento DECIMAL(5,2),
    FOREIGN KEY (idFactura) REFERENCES EncabezadoFactura(idFactura),
    FOREIGN KEY (idProducto) REFERENCES Productos(idProducto)
);
