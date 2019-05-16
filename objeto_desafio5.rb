
class Morseable
    def initialize(number)
    @number = number
    end
    def generate_hash
        @hash = {0 ==> '-----', 1 ==> '.----', 2 ==> '..---', 3 ==> '...--', 4 ==> '....-', 5 ==> '.....', 6 ==> '-....', 7 ==> '--...', 8 ==> '---..', 9 ==> '----.'}
    end
    end
    
    def to_morse
        puts @hash[@number]
    end
end

m = Morseable.new(3)
m.to_morse

# Refactorizar el código del método de instancia generate_hash para que los datos estén
# contenidos en un hash donde los números serán las claves y la traducción los valores.
# El método generate_hash además debe retornar la traducción del número recibido como
# argumento.