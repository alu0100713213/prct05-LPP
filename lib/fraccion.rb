class Fraccion
		attr_reader :numerador, :denominador

		# Función para inicializar
		def initialize(numerador, denominador)
			#simp = gcd(n,d)
			@numerador, @denominador = numerador, denominador
		end

		# Función para mostrar la fracción (numerador y denominador) de forma string
		def to_s
			"(#{@numerador},#{@denominador})"
		end

		# Función que devuelve el numerador
		def get_numerador()
			return @numerador
		end

		# Función que devuelve el denominador
		def get_denominador()
			return @denominador
		end

		# Función valor absoluto
		def absoluto()
			return Fraccion.new(@numerador.abs, @denominador.abs)
		end

		# Función para invertir una fracción
		def inverso()
				return Fraccion.new(@denominador, @numerador)
		end

		# Función para sobrecargar el operador +
		def +(object)
				aux = mcm(@denominador, object.denominador)
				aux1 = Fraccion.new((((aux*@numerador)/(@denominador))+(aux*object.numerador)/object.denominador),aux)
				return aux1
		end

		# Función para sobrecargar el operador -
		def -(object)
			if(object.denominador != @denominador)
				aux = mcm(@denominador, object.denominador)
				return Fraccion.new((((aux*@numerador)/(@denominador))-(aux*object.numerador)/object.denominador),aux)
			end
		else
			return Fraccion.new(@numerador+object.numerador, @denominador+object.denominador)
		end

		# Función para sobrecargar el operador
		def *(object)
			return Fraccion.new(@numerador*object.numerador, @denominador*object.denominador)
		end

		# Función para sobrecargar el operador
		def /(object)
			return Fraccion.new(@numerador*object.denominador, @denominador*object.nominador )
		end

		# Función para buscar un numero minimo multiplo
		def gcd(n, d)
			n1, n2 = n.abs, d.abs
			gcd = 1
			k = 1
			while( k <= n1 and k <= n2)
					if(n1 % k == 0 and n2 % k == 0)
						gcd = k
					end
					k += 1
			end
			return gcd
		end

		# Función para minimo comun multiplo
		def mcm(a, b)
			aux = gcd(a,b)
			(a/aux)*b
		end

		def simplify()
        aux = gcd(@numerador, @denominador)
        Fraccion.new(@numerador/aux, @denominador/aux)
    end
end
