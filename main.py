from commons.querys import Querys
import commons.graphs as g

q = Querys()


# Quiero un grafico que muestre:
# - Porcentaje de ventaEfectivo sobre TotalDia, en funcion de tiempo
data = q.percentCashPaid('2023-05-01', '2023-05-30')
g.plotPercentCash(data)    

# - Cantidad de personas (suma personas Xime, Yane y 3era) en funcion de tiempo
data = q.queryTotalClients('2023-04-01', '2023-04-30')
g.plotTotalClients(data)

    # - Cantidad de personas agrupado por chica por mes (grafico de barras)
    # - Porcentaje de efectivo sobre cantidad de personas ((montoEfectivo*totalPersonas)/Total) en func time
