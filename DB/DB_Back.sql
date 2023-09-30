CREATE DATABASE RA_102011

CREATE TABLE elecciones_2019 (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    departamento VARCHAR(255),
    candidato VARCHAR(255),
    votos INT
);

INSERT INTO elecciones_2019 (departamento, candidato, votos) VALUES
('Ahuachapán', 'Nayib Bukele', 117231),
('Ahuachapán', 'Carlos Calleja', 50392),
('Ahuachapán', 'Hugo Martínez', 27776),
('Ahuachapán', 'Otros', 19481),
('Cabañas', 'Nayib Bukele', 48514),
('Cabañas', 'Carlos Calleja', 22804),
('Cabañas', 'Hugo Martínez', 14520),
('Cabañas', 'Otros', 10989),
('Chalatenango', 'Nayib Bukele', 58488),
('Chalatenango', 'Carlos Calleja', 25729),
('Chalatenango', 'Hugo Martínez', 17201),
('Chalatenango', 'Otros', 15550),
('La Libertad', 'Nayib Bukele', 250573),
('La Libertad', 'Carlos Calleja', 100126),
('La Libertad', 'Hugo Martínez', 53661),
('La Libertad', 'Otros', 96788),
('Morazán', 'Nayib Bukele', 54991),
('Morazán', 'Carlos Calleja', 23840),
('Morazán', 'Hugo Martínez', 14634),
('Morazán', 'Otros', 16517),
('San Miguel', 'Nayib Bukele', 190873),
('San Miguel', 'Carlos Calleja', 75285),
('San Miguel', 'Hugo Martínez', 41463),
('San Miguel', 'Otros', 74125),
('San Salvador', 'Nayib Bukele', 375745),
('San Salvador', 'Carlos Calleja', 144389),
('San Salvador', 'Hugo Martínez', 80278),
('San Salvador', 'Otros', 150078),
('Santa Ana', 'Nayib Bukele', 133774),
('Santa Ana', 'Carlos Calleja', 54159),
('Santa Ana', 'Hugo Martínez', 29518),
('Santa Ana', 'Otros', 49097),
('Sonsonate', 'Nayib Bukele', 102641),
('Sonsonate', 'Carlos Calleja', 41207),
('Sonsonate', 'Hugo Martínez', 22149),
('Sonsonate', 'Otros', 39285),
('Cuscatlán', 'Nayib Bukele', 121318),
('Cuscatlán', 'Carlos Calleja', 47067),
('Cuscatlán', 'Hugo Martínez', 26302),
('Cuscatlán', 'Otros', 18343),
('Usulután', 'Nayib Bukele', 104712),
('Usulután', 'Carlos Calleja', 42934),
('Usulután', 'Hugo Martínez', 25749),
('Usulután', 'Otros', 26605),
('La Paz', 'Nayib Bukele', 93179),
('La Paz', 'Carlos Calleja', 37617),
('La Paz', 'Hugo Martínez', 22783),
('La Paz', 'Otros', 26421);

SELECT * FROM elecciones_2019;
CREATE VIEW Vista_ResultadosElecciones AS
SELECT
 [candidato],
 SUM([votos]) AS CantidadDeVotos,
 CAST(SUM([votos]) * 100.0 / SUM(SUM([votos])) OVER () AS DECIMAL(10, 2)) AS Porcentaje
FROM
 elecciones_2019
GROUP BY
 [candidato];