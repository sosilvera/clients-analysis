from datetime import datetime, timedelta
import commons.miniodownloader as minio
import jmespath
import json

def downloadInRange(project, tipo,fecha_inicio_str):
    # Puedo recibir por parámetro la fecha desde la que quiero
    # Restar con la fecha de hoy
    fecha_inicio = datetime.strptime(fecha_inicio_str, '%d-%m-%Y').date()
    fecha_hoy = datetime.today().date()

    # Iterar obteniendo la fecha con fecha = today() - diferencia(fechaParam, today)
    dateDiff = fecha_hoy - fecha_inicio

    for i in range(0, dateDiff.days):
        # Convierto la fecha de hoy a formato YYYYMMDD
        fecha_download = fecha_hoy - timedelta(days=i)
        fecha_download_str = fecha_download.strftime('%Y%m%d')
        # Descargo el reporte
        minio.downloadReport(project, tipo, fecha_download_str)

def generar_periodos(fecha_inicio, ancho_periodo):
    periodos = []
    fecha_actual = datetime.now().date()
    fecha = datetime.strptime(fecha_inicio, "%Y-%m-%d").date()

    while fecha <= fecha_actual:
        fecha_fin = fecha + timedelta(days=ancho_periodo-1)
        periodo = {"inicio": fecha.strftime("%Y-%m-%d"), "fin": fecha_fin.strftime("%Y-%m-%d")}
        periodos.append(periodo)
        fecha = fecha_fin + timedelta(days=1)

    return periodos

def filterRuns(proyect, fecha):
    with open(f'reports/{proyect}_{fecha}.json', 'rb') as f:
        data = json.load(f)

    runResume = "{passes: stats.passes,\
            pending: stats.pending,\
            failures: stats.failures,\
            fecha: stats.start,\
            duracion: stats.duration\
    }"

    queryFail1 = "results[].suites[].tests[?state=='failed'].title"
    queryFail2 = "results[].suites[].suites[].tests[?state=='failed'].title"


    resultResume = jmespath.search(runResume, data)
    resultFail1 = jmespath.search(queryFail1, data)
    resultFail2 = jmespath.search(queryFail2, data)
        
    
    fecha_objeto = datetime.strptime(resultResume["fecha"], "%Y-%m-%dT%H:%M:%S.%fZ")
    resultResume["fecha"] = fecha_objeto.strftime("%d-%m-%Y")

    failCases = []
    for i in resultFail1:
        for j in i:
            failCases.append(j)
    
    for i in resultFail2:
        for j in i:
            failCases.append(j)
    

    return {"resumen": resultResume, "failedCases": failCases}
    