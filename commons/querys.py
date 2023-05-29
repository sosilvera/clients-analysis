from schema.model import Ventas_Diarias, db
from sqlalchemy import create_engine, func, text, and_
from sqlalchemy.orm import sessionmaker, aliased
import urllib
from datetime import datetime, timedelta
import commons.env as env

class Querys():
    def __init__(self):
        params = urllib.parse.quote_plus(env.STRING_CONNECTION)
        engine = create_engine("mssql+pyodbc:///?odbc_connect=%s" % params)
        db.metadata.create_all(engine)
        Session = sessionmaker(bind=engine)

        self.session = Session()



    def queryTotals(self, init_date_str, end_date_str):
        init_date = datetime.strptime(init_date_str, '%Y-%m-%d')
        end_date = datetime.strptime(end_date_str, '%Y-%m-%d')
        query = self.session.query(Ventas_Diarias.Fecha, Ventas_Diarias.TotalDia) \
            .filter(Ventas_Diarias.Fecha.between(init_date, end_date))
        
        result = query.all()

        return result

    def queryCash(self, init_date_str, end_date_str):
        init_date = datetime.strptime(init_date_str, '%Y-%m-%d')
        end_date = datetime.strptime(end_date_str, '%Y-%m-%d')
        query = self.session.query(Ventas_Diarias.Fecha, Ventas_Diarias.VentaEfectivo) \
            .filter(Ventas_Diarias.Fecha.between(init_date, end_date))
        
        result = query.all()

        return result

    def percentCashPaid(self, fecha_inicio, fecha_fin):
        total_amount = self.queryTotals(fecha_inicio, fecha_fin)
        cash_amount = self.queryCash(fecha_inicio, fecha_fin)
        percentArray = []

        for i in range(0, len(total_amount)):
            fecha = total_amount[i][0]
            percent = (cash_amount[i][1] / total_amount[i][1])*100
            percentArray.append([fecha, percent])

        return percentArray

    def queryTotalClients(self, fecha_inicio_str, fecha_fin_str):
        init_date = datetime.strptime(fecha_inicio_str, '%Y-%m-%d')
        end_date = datetime.strptime(fecha_fin_str, '%Y-%m-%d')
        results = self.session.query(Ventas_Diarias.Fecha, \
                    (Ventas_Diarias.PersonasXime + Ventas_Diarias.PersonasYane + Ventas_Diarias.PersonasTercera).\
                    label('clientes')) \
                    .filter(and_(Ventas_Diarias.Fecha >= init_date, Ventas_Diarias.Fecha <= end_date)) \
                    .all()
        
        return results

    def sessionClose(self):
        self.session.close()

