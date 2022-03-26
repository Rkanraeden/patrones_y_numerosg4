# Escribir un programa llamado números.rb que reciba por línea de comandos la cantidad de
# líneas, y dibuje el siguiente patrón:

# ruby numeros.rb 5

# 1
# 12
# 123
# 1234
# 12345

num = ARGV[0].to_i
num.times do |i|
    if i.even? 
    puts
    print "\n"
    else
    
    end


end

