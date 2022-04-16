class Usuario
    attr_accessor :nombre, :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
        
    end
    def saldo_total
        @cuentas.map {|cuenta| cuenta.saldo }.sum 
    end
end
 
class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco, numero_de_cuenta, saldo=0)
        @banco = banco
        @saldo = saldo
        @numero_de_cuenta = numero_de_cuenta
    end  
    
    def transferir(monto,cuenta_destino)
        cuenta_destino.saldo = monto + cuenta_destino.saldo
        @saldo = @saldo - monto
        #puts @saldo
        #puts @trans_monto
    end
end

#Parte 4.- Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra.
puts "Parte 4.-"
#Creacion de Cuentas
cuenta_01 = CuentaBancaria.new("Origen","12344-4",5000)
cuenta_02 = CuentaBancaria.new("Destino","43434-E",5000)

#Creacion cuenta Usuario
usu_01 = Usuario.new("hola1",[cuenta_01,cuenta_02])

puts "Cuenta 01 Saldo " + cuenta_01.saldo.to_s
puts "Cuenta 02 Saldo " + cuenta_02.saldo.to_s

#Transferencia
cuenta_01.transferir(5000,cuenta_02)

#Cuentas despues de la transferencia
puts "Saldo cuenta 01 " + cuenta_01.saldo.to_s
puts "Saldo cuenta 01 " + cuenta_02.saldo.to_s

#Parte 6.-
puts "Parte 6.-"
#Saldo Total Usuario
puts "Saldo Total usuario " + usu_01.saldo_total.to_s
