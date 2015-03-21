class Drago
 attr_accessor :nome #ho messo un attributo, adesso posso accederci da fuori!
 def initialize 
  puts 'Come vuoi che mi chiami?'
  @nome=gets.chomp
 end
 
 def hofame
   puts 'Ho fame, mi dai da mangiare?'
   risposta= gets.chomp.downcase
   if risposta=='si'
     puts 'Grazie' 
   elsif risposta=='no'
   puts 'No problem, mi mangio te!'
   puts 'GAME OVER'
   else 
   puts 'Allora, mi rispondi??' 
   risposta=gets.chomp
   end
 end
 
end

d=Drago.new 
puts 'Ok, mi chiamo ' + d.nome
d.hofame
