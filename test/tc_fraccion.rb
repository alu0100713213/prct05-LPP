require 'lib/fraccion'
require 'test/unit'

class TestFraccion < Test::Unit::TestCase
  def setup
    @first = Fraccion.new(5,10)
    @second = Fraccion.new(2,5)
    @third = Fraccion.new(-5,-10)
  end
  def test_identidad
    assert_equal("(5,10)", @first.to_s)    # Test de Identidad
  end

  def test_operaciones
    assert_equal("(9,10)", (@first + @second).to_s)    # Test de Suma
    assert_equal("(1,10)", (@first - @second).to_s)    # Test de Resta
    assert_equal("(10,50)", (@first*@second).to_s)    # Test de Multiplicación
    assert_equal("(10,50)", (@first*@second).to_s)    # Test de División
  end

  def test_abs
    assert_equal("(5,10)", (@third.absoluto).to_s) # Test valor absoluto
  end

  def test_inverso
    assert_equal("(-10,-5)", (@third.inverso).to_s)  # Test de inverso
  end
end
