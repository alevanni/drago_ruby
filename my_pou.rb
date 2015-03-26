require './drago.rb'

gioco = Thread.new { 
d=Drago.new 
#qui dovrebbe leggere il salvataggio
#con d.leggi e rimodificare tutto
#ma adesso non ho voglia di farlo
puts 'Ok, mi chiamo ' + d.nome
d.hofame
puts 'Vuoi salvare il gioco?'
  if gets.chomp.downcase==si
     d.salva
  end

sleep(5.minutes) #per ora lo faccio aggiornare ogni 10 minuti

}
gioco.join
