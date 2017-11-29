module Formula
  @base = 0
  @altura = 0

  def perimetro(base = @base, altura = @altura)
    (base.to_i * 2) + (altura.to_i * 2)
  end

  def area(base = @base, altura = @altura)
    (base.to_i * altura.to_i)
  end
end

class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    print "Rectangulo de base: #{@base} y altura: #{@altura}"
  end
end

class Cuadrado
  include Formula
  def initialize(lado)
    @base = lado
    @altura = lado
  end

  def lados
    print 'Cuadrado de lado: ' + @base.to_s
  end
end

rectangulo = Rectangulo.new(2, 4)
cuadrado = Cuadrado.new(2)

puts "El perimetro del #{rectangulo.class} es #{rectangulo.perimetro}"
puts "El área del #{rectangulo.class} es #{rectangulo.area}"

puts "El perimetro del #{cuadrado.class} es #{cuadrado.perimetro}"
puts "El área del #{cuadrado.class} es #{cuadrado.area}"
