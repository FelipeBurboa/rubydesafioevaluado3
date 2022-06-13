datos = open('notas.data').readlines
datos2 = datos.map{|s| s.split(",").map(&:strip)}

def nota_mas_alta(data)
    i = 1
    notas = []
    data[1..-1].each do |j|
        notas.push(data[i])
        i += 1
    end
    #nota_mas_alta = [data[1].to_i, data[2].to_i,data[3].to_i,data[4].to_i].max
    nota_mas_alta = notas.max
    print nota_mas_alta
    puts ""
end

nota_mas_alta(datos2[0])
nota_mas_alta(datos2[1])
nota_mas_alta(datos2[2])
nota_mas_alta(datos2[3])

