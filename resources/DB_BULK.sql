CREATE DATABASE guzel;
USE guzel;

CREATE TABLE ventas_diarias (
    Fecha DATE PRIMARY KEY,
    TotalDia DECIMAL(10, 2),
    VentaEfectivo DECIMAL(10, 2),
    VentaTarjeta DECIMAL(10, 2),
    PersonasXime INT,
    PersonasYane INT,
    PersonasTercera INT,
    IngresosXime DECIMAL(10, 2),
    IngresosYane DECIMAL(10, 2),
    IngresosTercera DECIMAL(10, 2)
);

INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-03', 64845, 16350, 51600, 19, 0, 18, 31850, 0, 36100);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-06', 83650, 19150, 64500, 18, 21, 0, 42800, 40850, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-08', 86200, 5900, 80300, 14, 7, 12, 30600, 18700, 36900);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-10', 82850, 15400, 67450, 15, 0, 17, 46450, 0, 36400);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-12', 66200, 17600, 48600, 11, 13, 0, 32300, 33900, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-13', 68550, 20400, 48450, 15, 12, 0, 35650, 32900, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-14', 79050, 14900, 64150, 14, 13, 8, 29700, 28400, 20950);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-15', 84250, 21100, 63150, 11, 13, 5, 38050, 32600, 13600);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-19', 84450, 22100, 62350, 15, 19, 0, 42200, 42250, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-20', 98800, 22050, 76750, 14, 14, 13, 30750, 40050, 28000);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-21', 126850, 111350, 15550, 16, 16, 16, 49200, 41800, 35850);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-22', 105100, 19500, 85600, 13, 14, 13, 36200, 29850, 39050);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-24', 69750, 7050, 62700, 14, 0, 12, 31950, 0, 37800);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-28', 111000, 25900, 85100, 16, 16, 15, 35200, 39300, 36500);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-04-29', 105800, 21200, 84600, 13, 18, 14, 32850, 36400, 36550);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-02', 89600, 17550, 72050, 18, 16, 0, 43800, 45800, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-04', 95550, 10800, 84750, 18, 12, 12, 36400, 31600, 27550);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-05', 65850, 19885, 48665, 7, 13, 10, 22300, 24550, 19000);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-06', 93950, 9500, 84450, 20, 10, 5, 57550, 15700, 20700);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-08', 79400, 15900, 63500, 17, 0, 15, 42950, 0, 36450);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-09', 74350, 9850, 64500, 17, 18, 0, 35650, 38700, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-10', 97250, 8750, 88500, 17, 11, 10, 38050, 35800, 23400);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-12', 111300, 27100, 84200, 14, 19, 8, 39600, 43300, 28400);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-13', 132400, 23500, 108900, 0, 27, 19, 0, 75600, 56800);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-15', 92400, 12550, 79850, 18, 0, 14, 51650, 0, 40750);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-16', 95000, 15550, 79450, 20, 0, 20, 49450, 0, 45550);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-18', 97600, 26150, 71450, 16, 8, 9, 45050, 28100, 24450);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-19', 84800, 6100, 78700, 9, 11, 8, 23650, 29100, 32050);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-20', 116300, 19300, 97000, 19, 23, 0, 51000, 65300, 0);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-22', 79600, 16400, 63200, 16, 0, 16, 36300, 0, 43300);
INSERT INTO "ventas_diarias" ("Fecha", "TotalDia", "VentaEfectivo", "VentaTarjeta", "PersonasXime", "PersonasYane", "PersonasTercera", "IngresosXime", "IngresosYane", "IngresosTercera") VALUES ('2023-05-23', 69400, 15600, 53800, 15, 15, 0, 33700, 35700, 0);
