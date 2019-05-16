
class Morseable
    def initialize(number)
        @number = number
        @hash = {0 => '-----', 1 => '.----', 2 => '..---', 3 => '...--',  4 => '....-', 5 => '.....', 6 => '-....', 7 => '--...', 8 => '---..', 9 => '----.'}
    end

    def generate_hash
        puts @hash[@number]
    end
end
5.times do |i|
    m = Morseable.new(i+2)
    m.generate_hash
end

# Refactorizar el código del método de instancia generate_hash para que los datos estén
# contenidos en un hash donde los números serán las claves y la traducción los valores.
# El método generate_hash además debe retornar la traducción del número recibido como
# argumento.