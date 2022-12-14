-- MySQL Script generated by MySQL Workbench
-- Sun Jul  3 16:35:57 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

create database empresachill;
select * from trabajadores;
use empresachill;
CREATE TABLE IF NOT EXISTS `empresachill`.`departamento` (
  `id_departamento` INT NOT NULL AUTO_INCREMENT,
  `area_depart` VARCHAR(30) NOT NULL,
  `profesion` VARCHAR(30) NOT NULL,
  `status` INT NOT NULL,
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB;
select * from departamento;
insert into departamento(area_depart, profesion, status) values
('Financiero', 'Contadores', 10),
('Compras', 'Atencion al Cliente', 4),
('Recusos Humanos', 'RRHH', 4),
('Control de Gestion', 'Administradores', 8),
('Marketing', 'Diseñadores', 6),
('Ingenieria', 'Programadores', 10);

-- -----------------------------------------------------
-- Table `mydb`.`trabajadores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresachill`.`trabajadores` (
  `id_trabajadores` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(20) NOT NULL,
  `apellidos` VARCHAR(20) NOT NULL,
  `celular` VARCHAR(20) NOT NULL,
  `area_trabj` INT NOT NULL,
  PRIMARY KEY (`id_trabajadores`),
  INDEX `area_trabj_idx` (`area_trabj` ASC) VISIBLE,
  CONSTRAINT `area_trabj`
    FOREIGN KEY (`area_trabj`)
    REFERENCES `empresachill`.`departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
select * from trabajadores;
insert into trabajadores(nombres, apellidos, celular, area_trabj) values
('Carlos', 'Ulloa',  88638578, '6'),
('Joyce', 'Toledo',  78651247, '4'),
('Marcos', 'Chacon',  88968574, '2'),
('Ezequiel', 'Castillo',  55448798, '1'),
('Erick', 'Melendez',  78982514, '5'),
('Manuel', 'Perex',  89752146, '6'),
('Joseph', 'Tatnai',  87457563, '1'),
('Eduardo', 'Obando',  55784968, '4'),
('Oscar', ';Muñoz',  88124793, '2'),
('Melvin', 'Rivas',  88965241, '3'),
('Jhon', 'Kenedy',  88754126, '1'),
('Carmen', 'Rojas',  57874924, '6'),
('Camila', 'Vega',  88864517, '4'),
('Mauricio', 'Ballardo',  78592132, '6'),
('Fabricio', 'Cornero',  77548968, '5'),
('Genesis', 'Belen',  78596321, '4'),
('Henry', 'Sandoval',  88475212, '4'),
('Joel', 'Sanchez',  848684787, '2'),
('Josue', 'Calderon',  84812136, '1'),
('Karla', 'Novoa',  89657124, '3'),
('Francis', 'Garcia',  85972164, '5'),
('Fernanda', 'Moncada',  84897230, '5'),
('Jossy', 'Hernandez',  84206579, '3'),
('Jade', 'Sequeira',  84751273, '1'),
('Esteban', 'Cano',  5798623, '2'),
('Kevin', 'Mendez',  579863485, '1'),
('Alex', 'Perreira',  84806154, '2');

-- -----------------------------------------------------
-- Table `mydb`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresachill`.`proveedores` (
  `id_provee` INT NOT NULL AUTO_INCREMENT,
  `nombre_provee` VARCHAR(30) NOT NULL,
  `correo` VARCHAR(30) NOT NULL,
  `compañias` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id_provee`))
ENGINE = InnoDB;
select * from proveedores;
insert into proveedores(nombre_provee, correo, compañias) values
('Jack Ma', 'alibaba@gmail.com', 'Alibaba'),
('Jack Ma', 'aliexpress@gmail.com', 'AliExpress'),
('Ma Huateng', 'tencent@gmail.com', 'Tencent'),
('Jeff Bezos', 'amazon@gmail.com', 'Amazon'),
('Fierre Omidyar', 'ebay@gmail.com', 'Ebay'),
('Robert Gentz', 'zalando@gmail.com', 'Zalando');

-- -----------------------------------------------------
-- Table `mydb`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresachill`.`productos` (
  `id_product` INT NOT NULL AUTO_INCREMENT,
  `articulos` VARCHAR(30) NOT NULL,
  `precios` INT NOT NULL,
  `cod_product` INT NOT NULL,
  `compañia_provee` INT NOT NULL,
  PRIMARY KEY (`id_product`),
  INDEX `compañia_provee_idx` (`compañia_provee` ASC) VISIBLE,
  CONSTRAINT `compañia_provee`
    FOREIGN KEY (`compañia_provee`)
    REFERENCES `empresachill`.`proveedores` (`id_provee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
select * from productos;
insert into productos(articulos, precios, cod_product, compañia_provee) values
('MonitoresGaming',  1200, 4568, 1),
('IntelCorei7',  200, 8475, 3),
('Ryzen9',  300, 45875, 5),
('SillasGaming',  700, 2315, 6),
('CPUGamer',  2000, 1474, 4),
('TarjetasVideo',  150, 8472, 3),
('MueblesGaming', 400, 3229, 2),
('TecladosGaming',  200, 1248, 3),
('AirpodGaming',  150, 1204, 6),
('FundasGaming',  50, 0178, 5),
('MouseGaming',  300, 3284, 4),
('LucesLed',  200, 7842, 2),
('Tripode',  40, 4652, 3),
('ArosLed',  130, 6358, 1),
('VentiladoresGaming',  200, 4124, 5),
('AireAcondicionado',  600, 2017, 3),
('PeluchesMinecraft',  100, 0721, 4),
('Controladores',  100, 1014, 3),
('LaptopGaming',  3000, 3002, 5),
('Baterias',  100, 1815, 5),
('Adaptadores',  30, 3024, 2),
('Plaquetas',  50, 1614, 3),
('RouterGaming',  180, 3028, 1);

-- -----------------------------------------------------
-- Table `mydb`.`almacen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresachill`.`almacen` (
  `id_almacen` INT NOT NULL AUTO_INCREMENT,
  `inventario` VARCHAR(30) NOT NULL,
  `cantidades` INT NOT NULL,
  `almc_prodct` INT NOT NULL,
  PRIMARY KEY (`id_almacen`),
  INDEX `almc_prodct_idx` (`almc_prodct` ASC) VISIBLE,
  CONSTRAINT `almc_prodct`
    FOREIGN KEY (`almc_prodct`)
    REFERENCES `empresachill`.`productos` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
select * from almacen;
insert into almacen(inventario, cantidades, almc_prodct) values
('MonitoresGaming', 14, 1),
('IntelCorei7', 11, 2),
('Ryzen9', 15, 3),
('SillasGaming', 8, 4),
('CPUGamer', 14, 5),
('TarjetasVideo', 8, 6),
('MueblesGaming', 12, 7),
('TecladosGaming', 9, 8),
('AirpodGaming', 7, 9),
('FundasGaming', 9, 10),
('MouseGaming', 18, 11),
('LucesLed', 20, 12),
('Tripode', 11, 13),
('ArosLed', 13, 14),
('VentiladoresGaming', 16, 15),
('AireAcondicionado', 12, 16),
('PeluchesMinecraft', 7, 17),
('Controladores', 14, 18),
('LaptopGaming', 8, 19),
('Baterias', 9, 20),
('Adaptadores', 10, 21),
('Plaquetas', 14, 22),
('RouterGaming',  12, 23);

-- -----------------------------------------------------
-- Table `mydb`.`compradores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empresachill`.`compradores` (
  `id_compradores` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(30) NOT NULL,
  `celular` INT NOT NULL,
  `empresas` VARCHAR(20) NOT NULL,
  `idprod_almc` INT NOT NULL,
  PRIMARY KEY (`id_compradores`),
  INDEX `idprod_almc_idx` (`idprod_almc` ASC) VISIBLE,
  CONSTRAINT `idprod_almc`
    FOREIGN KEY (`idprod_almc`)
    REFERENCES `empresachill`.`almacen` (`id_almacen`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
select * from compradores;
insert into compradores(nombres, celular, empresas, idprod_almc) values
('Mertens', 87864528, 'Fedex', 5),
('Boris', 78462102, 'CreditMat', 12),
('Julio', 77451265, 'Bac', 18),
('Pablo', 87569118, 'Orbitech', 1),
('Pedro', 88513078, 'CellService', 21),
('Ramon', 57142350, 'CompuTec', 3),
('Osman', 75236098, 'HiGamer', 2),
('Kenia', 89561203, 'Wix', 18),
('Carla', 84761230, 'Mojan', 7),
('Kelvin', 87951230, 'CellCenter', 4);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;