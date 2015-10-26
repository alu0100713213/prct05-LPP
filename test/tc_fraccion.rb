require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
  def setup
    @first = Fraccion.new(5,10)
    @second = Fraccion.new(2,5)
  end
  def test_simple
    assert_equal("(5,10)", @first.to_s)    # Test de Identidad
    assert_equal("(9,15)", (@first + @second).to_s)    # Test de Suma

    #assert_equal("(-1,-1)", (-@unidad).to_s)    # Test de Resta
 #   assert_equal("(25,50)", (@first*5).to_s)    # Test de Multiplicación
  end

# def test_type_check
 #   assert_raise(RuntimeError) {Fraccion.new('2','5')}
 # end
 # def test_failure
 #   assert_equal("(50,25)", (@origen * 5).to_s, "Producto escalar")
 # end
end

