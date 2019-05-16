# Crea una clase llamada MyPet, La cual, al inicializarse genere una mascota con los
# siguientes parametros:
# # Crea un método para hacer caminar a tu mascota e ir al baño

class MyPet
    def initialize(name)
        @name = name.capitalize
        @sleep = false
        @satisfied = 10 # Esta lleno
        @fullIntestine = 0 # No necesita ir
        puts "#{@name} nace"
    end
    
    def walk
        puts "Hiciste caminar a #{@name}."
        @satisfied -= 2
        @fullIntestine = 2
    end
    
    def poop
        puts "#{@name} fue al baño"
        @fullIntestine = 0
    end

    def timeLapse
        if @satisfied > 0
            # Mueve el alimento del estomago al intestino.
            @satisfied = @satisfied - 1
            @fullIntestine = @fullIntestine + 1
        else # Nuestro mascota esta hambrienta!
            if @sleep
            @sleep = false
            puts '¡Se despierta de repente!'
             end
            puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
            exit # Sale del programa.
        end
        if @fullIntestine >= 10
            @fullIntestine = 0
        puts '¡Uy! ' + @name + ' tuvo un accidente...'
    end
    if hungry?
        if @sleep
            @sleep = false
            puts '¡Se despierta de repente!'
        end
        puts 'El estomago de ' + @name + 'retumba...'
    end
    if needToGo?
        if @sleep
            @sleep = false
            puts 'Se despierta de repente!'
        end
        puts @name + ' hace la danza del baño...'
    end
    end
end



# # Prueba el siguiente Método para hacer pasar el tiempo:

# # Genera el método comer considerando que llenara su panza y pasara el tiempo.
# # Genera el método dormir considerando que pasara el tiempo y vaciara su panza.
# # Generar un menu para interactuar con tu mascota (alimentarlo, hacerlo dormir, salir a
# # caminar) debes poder iterar las opciones, hasta que, Si la mascota muere de hambre
# # debe terminar el programa.