# Escribir un programa llamado patrones.rb con métodos que reciban la cantidad de líneas y
# muestren por pantalla los siguientes patrones de *:

#letra o
#cover debe darnos num"*" por lo que se usará para arriba y para abajo.
def cover(num)
    num.times do 
        print "* " 
    end
    print "\n"
end

# middle nos dará "*" num " " "*" 
def middle(num)
    print "* "
    (num-2).times do |i|
        print "  "
    end
    print "* "
    print "\n"
end
def letra_o(num)
    cover(num)
    (num-2).times do |i|
        middle(num)
    end
    cover(num)
end

letra_o(5)

print "\n"

# Inicio letra I

# *****
#   *
#   *
#   *
# *****

# Vamos a reutilizar cover

def middle_i(num)
    (num-2).times do |i|
        num.times do |j|
            # if (j > num/2) || (j < num/2)
            #     print "  "
            # else
            #     print "* "
            # end 
            if j== num/2
                print"* "
            else 
                print "  "
            end
        end
        print "\n"
    end
end

def letra_i(num)
    cover(num)
    middle_i(num)
    cover(num)
end

letra_i(5)

print "\n"

# 0 0 1 0 0 i == 0 j == 2 j > num/2 || j < num/2
# 0 0 1 0 0 i == 1 j == 2 j == num/2
# 0 0 1 0 0 i == 2 j == 2

# d. método letra_x(n)
# n = 5

# 1 0 0 0 1 i == 0 j == 0 || i == 0 j == 4
# 0 1 0 1 0 i == 1 j == 1 || i == 1 j == 3
# 0 0 1 0 0 i == 2 j == 2 || i == 2 j == 2
# 0 1 0 1 0 i == 3 j == 3 || i == 3 j == 1
# 1 0 0 0 1 i == 4 j == 4 || i == 4 j == 0 

def letra_x(n)
    n.times do |i|
        n.times do |j|
            if i==j || j== n-1-i
                print"* "
            else
                print"  "
            end
        end
        print "\n"
    end
end

letra_x(5)

print "\n"
# numero cero 
# n = 5



# 1 1 1 1 1
# 1 1 0 0 1
# 1 0 1 0 1
# 1 0 0 1 1
# 1 1 1 1 1 


def numero_cero(num)
    cover(num)
        (num-2).times do |i|
            print "*"
        (num-2).times do |j|
            if i == j
                print "*" 
            else
                print " "
            end
        end
            print "*"
            print "\n"
        end
    cover(num)
end
  numero_cero(5)

  print "\n"
  
  # letra z

def diagonal(num)
    (num-2).times do |i|
        num.times do |j|
        if j == num-1-i
            print "*"
        else
            print " "
        end
        end
            print "\n"
    end  
end
def letra_z(num)
    cover(num) 
    diagonal(num)
    cover(num) 
end
letra_z(5)

# Arbol de navidad


#Método navidad(n)
def navidad(num)
    for i in 0..(num-1)
        (num - i).times do
        print " "
        end
        i.times do
        print "* "
        end
        print "\n"
end

(num-3).times do |i|
    num.times do |j|
        if j == num/2
            print "  *"
        else
            print " "
        end
    end 
        print "\n"
    end
        print " "
    (num-2).times do |i|
        print " *"
    end
        print " "
end
navidad(7)
