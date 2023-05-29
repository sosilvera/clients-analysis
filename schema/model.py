from sqlalchemy import Boolean, Column
from sqlalchemy import DateTime, Integer, String, Text, Float, ForeignKey
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

db = SQLAlchemy()
class Ventas_Diarias(db.Model):
    __tablename__ = 'ventas_diarias'
    Fecha = db.Column(db.Date, primary_key=True)
    TotalDia = db.Column(db.Float(precision=2))
    VentaEfectivo = db.Column(db.Float(precision=2))
    VentaTarjeta = db.Column(db.Float(precision=2))
    PersonasXime = db.Column(db.Integer)
    PersonasYane = db.Column(db.Integer)
    PersonasTercera = db.Column(db.Integer)
    IngresosXime = db.Column(db.Float(precision=2))
    IngresosYane = db.Column(db.Float(precision=2))
    IngresosTercera = db.Column(db.Float(precision=2))