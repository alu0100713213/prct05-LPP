class Fraccion
		attr_reader :numerador, :denominador

		# Función para inicializar
		def initialize(numerador, denominador)
			simp = gcd(n,d)
			@numerador, @denominador = numerador, denominador
		end

		# Función para mostrar la fracción (numerador y denominador) de forma string
		def to_s
			"(#{@numerador},#{@denominador})"
		end

		def numerador()
			@numerador
		end

		def denominador()
			@denominador
		end

		def absoluto()
				Fraccion.new(@numerador.abs, @denominador.abs)
		end

		def inverso()
				Fraccion.new(@denominador, @numerador)
		end

		# Función para sobrecargar el operador +
		def +(object)
			if(denom1 != @denominador)
				aux = mcm(@denominador, object.denominador)
				return Fraccion.new((((aux*@numerador)/(@denominador))+(aux*object.numerador)/object.denominador),aux)
			end
		end

		# Función para sobrecargar el operador -
		def -(num1, denom1)
			if(denom1 == @denominador)
				Fraccion.new(@numerador + num1,  @denominador + denom1)
			end
		end

		# Función para sobrecargar el operador
		def *(num1, denom1)
			if(denom1 == @denominador)
		  	Fraccion.new(@numerador * num1,  @denominador * denom1)
			end
		end

		# Función para sobrecargar el operador
		def /(num1, denom1)
			if(denom1 == @denominador)
				Fraccion.new(@numerador / num1,  @denominador / denom1)
		  end
		end

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

		def mcm(a, b)
			aux = gcd(a,b)
			(a/aux)*b
		end
end
