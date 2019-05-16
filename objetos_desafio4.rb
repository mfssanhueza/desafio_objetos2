# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un
# método llamado ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"

propiedades = {name: 'Beethoven', breed: 'San Bernardo', color: 'Café'}

class Dog
    attr_reader :name, :breed, :color
    
    def initialize(hash)
        @name = hash[:name]
        @breed = hash[:breed]
        @color = hash[:color]
    end

    def bark
        puts "#{@name} está ladrando."
    end
end

a = Dog.new(propiedades)
a.bark