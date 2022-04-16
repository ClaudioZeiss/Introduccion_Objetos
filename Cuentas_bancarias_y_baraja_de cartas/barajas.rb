#Llamada al archivo con la Clase Carta
require_relative 'carta'

class Baraja
    attr_accessor :cartas
    def initialize (cartas)
        @cartas = cartas
        #Forma el mazo de 52 cartas (numero y pinta)
        for pinta in ['C','D','E','T']
            for numero in 1..13 
                @cartas.push Carta.new(numero,pinta)
            end
        end
        #puts @cartas        
    end

    #Metodo que desordena las cartas
    def barajar(cartas)
        cartas=@cartas.shuffle!()
    end

    #Metodo para sacar una carta
    def sacar
        a=@cartas.pop
        "#{a.pinta} #{a.numero} \n"
    end

    #Metodo repartir mano
    def repartir_mano(mano)
        mano=@cartas.pop(5)
        print "#{mano[0].pinta} #{mano[0].numero} \n"
        print "#{mano[1].pinta} #{mano[1].numero} \n"
        print "#{mano[2].pinta} #{mano[2].numero} \n"
        print "#{mano[3].pinta} #{mano[3].numero} \n"
        print "#{mano[4].pinta} #{mano[4].numero} \n"
    end
end

#Queda para el 18
cartas=[]
mano=[]

mazo = Baraja.new(cartas)

#Mazo de cartas
puts "Mazo de cartas"
for i in 0..51
    print "#{cartas[i].pinta} #{cartas[i].numero} \n" 
end
puts "\n"

#Revolver las cartas
puts "Revolver las cartas"
mazo.barajar(cartas)
for i in 0..51
    print "#{cartas[i].pinta} #{cartas[i].numero} \n" 
end
puts "\n"

#Sacar una carta
puts "Sacar una carta \n"
#print "#{mazo.sacar(cartas)} \n"
print "#{mazo.sacar} \n"
puts "\n"

#Repartir
puts "Repartir \n"
mazo.repartir_mano(mano)
for i in 0..4
    print "#{mano[i]}\n"
    #print "#{mano[i].pinta} #{mano[i].numero} \n"
end
