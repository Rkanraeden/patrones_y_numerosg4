# linea de arriba

# cover debe darnos num "*", por lo que se usará para arriba y abajo.
def cover(num)
    num.times do
        print ="* "
    print "\n"
    end
end

#middle nos dará "* " num " " "*" la razón por la que necesitamos 3 espacios vacíos
def middle(num)
    print "* "
    (num-2).times do |i|
        print "  "
    end
    print "* "
    print "\n"
end

# linea de abajo
def letra_o(n)
    cover(num)
    (num-2).times do |i|
        middle(num)
    end
    cover(num)
end

letra_o(5)


