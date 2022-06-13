chart = [5,3,2,5,10]
max = chart.max
num = 1
n = ARGV[0].to_i #Entrega el numero de * que se quiere mostrar POR número
chart.each do |i|
    print "|"
    #print "*" * (i*2) #Si se remueve el argumento pedido por consola, por default se mostraran 2 asterisco por cada unidad. 3*2, 5*2, etc.
    print "*" * (i*n)
    puts ""
end
print ">"
#print "-" * (max*2) #Si se remueve el argumento pedido por consola, por default la linea sera del tamaño del mayor numero * 2
print "-" * (max * n)
puts ""
while num <= max
    #print "#{num} " #Si se remueve el argumento pedido por consola, por default seran 1 espacio en blanco por cada numero debajo del chart

    #Ajusta un poco el espaciado de los numeros debajo del chart
    print "#{num}"
    if n >= 2
    print " " * (n-1)
    end
    
    num = num.next
end