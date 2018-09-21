-- creo geotabella edifici

CREATE TABLE "edifici" 
(
"pk_uid" INTEGER PRIMARY KEY autoincrement NOT NULL,
"spigolo" TEXT, -- nome spigolo
"altezza" DOUBLE , -- altezza edificio
"eta" INTEGER , -- età edificio
"nro_piani" INTEGER , -- numero piani fuori terra
"data_ril" DATE , -- data del rilievo
"path1_foto" TEXT , -- percorso relativo alla foto1 edificio
"path2_foto" TEXT , -- percorso relativo alla foto2 edificio
"path3_doc" TEXT , -- percorso relativo documento doc,pdf,csv
"note" TEXT ,-- note
"osservazioni" TEXT -- eventuali osservazioni
);
-- aggiungo colonna geometry
SELECT AddGeometryColumn ('edifici','geom',3004,'POINT','XY');

-- creo geotabella ponti
CREATE TABLE "ponti" 
(
"pk_uid" INTEGER PRIMARY KEY autoincrement NOT NULL,
"altezza" REAL , -- altezza edificio
"eta" INTEGER , -- età edificio
"nro_campate" INTEGER , -- numero piani fuori terra
"data_ril" DATE , -- data del rilievo
"path1_foto" TEXT , -- percorso relativo alla foto1 ponte
"path2_foto" TEXT , -- percorso relativo alla foto2 ponte
"path3_doc" TEXT , -- percorso relativo documento doc,pdf,csv
"note" TEXT ,-- note
"osservazioni" TEXT -- eventuali osservazioni
);
--aggiungo colonna geometry
SELECT AddGeometryColumn ('ponti','geom',3004,'POINT','XY');
