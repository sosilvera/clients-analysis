import matplotlib.pyplot as plt
import numpy as np
import operator
import matplotlib.dates as mdates
import datetime

def plotPercentCash(data):
    # Separar las fechas y las cantidades en listas separadas
    fechas = [d[0] for d in data]
    cantidades = [d[1] for d in data]

    # Crear el gráfico de líneas
    #fig, ax = plt.subplots()
    #ax.fill_between(fechas, cantidades, marker="o", label = 'Porcentaje de efectivo por dia', color='tab:red')

    plt.plot_date(fechas, cantidades, linestyle="solid", color="tab:red")

    # Rotar las etiquetas del eje x
    plt.xticks(np.arange(fechas[0], fechas[len(fechas)-1], 3),rotation=45)
    
    # Rango de Y hasta 100
    plt.yticks(np.arange(0, 100, 5.0))
    
    # Configurar los nombres de los ejes
    plt.xlabel('Fecha')
    plt.ylabel('Porcentaje Efectivo')
    plt.grid(axis = 'y', color = 'gray', linestyle = 'dashed')
    
    # Mostrar el gráfico
    plt.tight_layout()
    plt.show()

def plotTotalClients(data):
    # Separar las fechas y las cantidades en listas separadas
    fechas = [d[0] for d in data]
    clientes = [d[1] for d in data]

    plt.plot_date(fechas, clientes,linestyle="solid", color="tab:blue")
    
    plt.xlabel('Fecha')
    plt.ylabel('Cantidad de Clientes')
    
    plt.title('Cantidad de Clientes por Fecha')
    
    plt.xticks(rotation=45)
    plt.yticks(np.arange(0, 61, 5))
    
    plt.grid(axis = 'y', color = 'gray', linestyle = 'dashed')

    plt.tight_layout()
    plt.show()