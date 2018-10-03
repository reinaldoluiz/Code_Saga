#01

#print "Meu nome é Reinaldo\n"
#print "Tenho 33 anos\n"
#print "Moro em São Paulo\n"
#print ""
#print "Meu nome é Reinaldo\n"

#02

#puts "Digite seu nome:"
#name = gets
#puts "Digite sua idade:"
#age = gets

#puts "Seu nome é #{name}"
#puts "Seu nome é #{age}"

#03

puts "Digite sua idade:"
age = gets.to_i

if age < 18
  puts 'Você não está apto a dirigir'
else
  puts 'Você está apto a dirigir'
end
