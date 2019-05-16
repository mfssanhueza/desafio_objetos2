# 1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
# 2. Modificar el objeto para que pueda recibir una nota del alumno.
# 3. Agregar un getter para la nota.
# 4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
# 5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de
# estudiantes.


#5:
class Student
    attr_accessor :name, :grade
    def initialize(name, grade)
        @name = name
        @grade = grade
    end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

students = []

nombres.each_with_index do |ele, i|
    students.push(Student.new(ele,i+1))
end

grades = students.map { |ele| ele.grade }
puts grades


#2, 3 y 4:
# class Student
#     attr_accessor :name, :grade
#     def initialize(name, grade)
#         @name = name
#         @grade = grade
#     end
# end

# nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

# students = []

# nombres.each_with_index do |ele, i|
#     students.push(Student.new(ele,i+1))
# end
# print nombres_obj


#1:
# class Student
#     attr_accessor :name
#     def initialize(name)
#         @name = name
#     end
# end

# nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

# students = []

# nombres.each do |ele|
#     students.push(Student.new(ele))
# end
# puts nombres_obj
