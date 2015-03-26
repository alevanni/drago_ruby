

class Quid
 attr_accessor :stato #hash con lo stato del drago
 attr_accessor :nome
 attr_accessor :livello
 def initialize 
  @stato= {} #inizializzo l'hash dello stato
  #File.open("stato.txt").
  puts 'Come vuoi che mi chiami?'
  @nome=gets.chomp
  @livello=0
  @stato['salute']=100
  @stato['energia']=50
  @stato['sazieta']=29
  @stato['sporco']=false
 end
 
 def hofame
   puts 'Ho fame, mi dai da mangiare?'
   risposta= gets.chomp.downcase
   if risposta=='si'
     puts 'gnam'
     sleep(2)
     puts 'gnam'
     puts 'Grazie' 
   elsif risposta=='no'
     puts 'No problem, mi mangio te!'
     puts 'GAME OVER'
   else 
     puts 'Allora, mi rispondi??' 
     risposta=gets.chomp
   end
 end
 
 def leggi file #legge gli ultimi dati e quando e' stato fatto l'ultimo salvataggio
   #File.open(file)
   
 end

  def salva
    #scrive il salvataggio su un file di testo
  end
end


