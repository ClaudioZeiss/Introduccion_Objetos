class Carta
	attr_accessor :numero, :pinta
	def initialize(numero, pinta)
		@numero = numero
		@pinta = pinta
	end
end
=begin
cartas=[]
carta=5
naipe=Carta.new(1,2)
puts naipe
carta.times do |i|
	cartas.push Carta.new(Random.rand(1..13),['C','D','E','T'].sample)
end
print cartas
=end