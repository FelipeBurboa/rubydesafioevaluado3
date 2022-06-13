datos = open('notas.data').readlines
datos2 = datos.map{|s| s.split(",").map(&:strip)}

#Solucion con 4 notas fijas pero numero ilimitado de alumnos
def nota_mas_alta(data)
    nota_mas_alta = []
    j = 0
    size = data.length
    while j < size
        nota_mas_alta.push(data[j][0]) #remover para sacar el nombre
        nota_mas_alta.push([data[j][1].to_i, data[j][2].to_i,data[j][3].to_i,data[j][4].to_i].max)
        j +=1
    end
    nota_mas_alta = nota_mas_alta.each_slice(2).to_a #remover para sacar el nombre
    print nota_mas_alta
end

#nota_mas_alta(datos2)


#Solucion con notas y alumnos sin limite
def nota_mas_alta1(data)
    j = 0
    i = 1
    size = data.length
    nota_mas_alta = Array.new(size){Array.new(0)}
    notas = Array.new(size){Array.new(0)}
    while j < size
        data[j][1..data[j].length].each do |n|
            notas[j] << (data[j][i].to_i)
            i += 1
        end
        notas[j].each do |k|
            nota_mas_alta[j].push(data[j][0])
            nota_mas_alta[j].push(notas[j].max)
            break
        end  
        j +=1
        i = 1
    end
    print nota_mas_alta #[["Javiera", 9], ["Francisca", 8], ["Juan", 9], ["Pedro", 8], ["Cecilia", 10]]
end


nota_mas_alta1(datos2)
