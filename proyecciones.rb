data = open('ventas_base.db').read.chomp.split(',')
#Mi array
#misdatos = open('miarchivo').read.chomp.split(',')
suma = 0

def read_file(data)
    array = []
    data.each do |i|
        array.push i.to_f  
        end
    return array
end

def promedios(datos, suma)
    resultado = []
    #suma = (datos[0..5].sum).round(2) #Suma total 6 meses
    suma = (datos[0..5].sum/6).round(2) #Promedio 6 meses
    resultado.push(suma)
    suma = 0
    #suma = (datos[6..11].sum).round(2) #Suma total 6 meses
    suma = (datos[6..11].sum/6).round(2) #Promedio 6 meses
    resultado.push(suma)
    suma = 0
    File.write('resultado.data', resultado.join("\n"))
    print resultado
end

def promedios2(datos, suma , desde, hasta)
    resultado = []
    #suma = (datos[desde..hasta].sum).round(2) #Suma total 6 meses
    suma = (datos[desde..hasta].sum/6).round(2) #Promedio 6 meses
    resultado.push(suma)
    suma = 0
    File.write('resultado.data', resultado.join("\n"))
    print resultado
end

datos = read_file(data)
#Para que el promedio a sacar sea del array entregado
#datos = read_file(misdatos)

promedios(datos, suma)
#promedios2(datos, suma, 0, 5) #promedios(datos, suma, desde que mes, hasta que mes)