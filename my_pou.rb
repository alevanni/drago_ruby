require './quid.rb'

gioco = Thread.new { 
pou=Quid.new 
#qui dovrebbe leggere il salvataggio
#con pou.leggi e rimodificare tutto
#ma adesso non ho voglia di farlo
puts 'Ok, mi chiamo ' + pou.nome
pou.hofame
puts 'Vuoi salvare il gioco?'
  if gets.chomp.downcase=='si'
     pou.salva
  end

#sleep(5.minutes) #per ora lo faccio aggiornare ogni 10 minuti

}
gioco.join
