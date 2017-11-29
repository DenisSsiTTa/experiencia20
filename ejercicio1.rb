class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
end

class AlumnoLectura
  def read_file(nom_archivo = 'notas.txt')
    @archivo = nom_archivo

    alumnos = []
    data = []

    File.open(@archivo, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
    print alumnos
  end
end

AlumnoLectura.new.read_file
