#!/usr/bin/ruby

#definisco la classe
#la chiamo quid perche' ancora non ho eciso cosa sara'

class Quid
 attr_accessor :stato #hash con lo stato del drago
 attr_accessor :nome
 attr_accessor :livello
 attr_accessor :salvataggio #file di testo che contiene i dati del salvataggio
 
  
 def initialize #costruttore
  @stato= {} #inizializzo l'hash dello stato
  #inizializzo anche l'oggetto file e gli faccio leggere il salvataggio
  @salvataggio=File.new("stato.txt", "w+") 
  #fagli leggere tutto
  #end
  #w+ serve a sovrascrivere
  #tutto il blocco qui sotto srve nel caso in cui i file abbia scritto sopra "non definito"
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
    #per adesso salva solo l'ora
    @salvataggio.syswrite(Time.new)
  end
end


