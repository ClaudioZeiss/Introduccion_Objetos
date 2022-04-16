class CuentaBancaria
	attr_accessor :nombre_usuario, :numero_cuenta, :vip
	def initialize(nombre_usuario, numero_cuenta,vip=0)
		raise RangeError, "El numero de digitos no corresponde" if numero_cuenta.digits.count !=8
		raise RangeError, "El numero no corresponde a vip" if vip !=0 && vip != 1
		@nombre_usuario = nombre_usuario
		@numero_cuenta = numero_cuenta
		@vip = vip
	end
	def numero_de_cuenta
		"#{@vip}-#{@numero_cuenta}"
	end
end
