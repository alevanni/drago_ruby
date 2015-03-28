require 'tk'

class Interfaccia_notebook
  attr_accessor :finestra #in realta' non serve che siano attributi
  attr_accessor :stanze #l'hash con le opzioni
  attr_accessor :n
def initialize s
  @stanze={}
  @finestra=TkRoot.new {
            height 340
            width  320 
            title "Quid"
  }
  
  @n=Tk::Tile::Notebook.new(@finestra) {
   #finisci di aggiornarlo!
  
   place('height' => 300, 'width' => 300, 'x' => 10, 'y' => 10)
   }

  s.each do |stanza|
  @stanze[stanza] = TkFrame.new(n)
  n.add @stanze[stanza], :text => stanza
  end
end


end
a=Interfaccia_notebook.new ['Cucina', 'Giardino', 'Camera', 'Bagno']
Tk.mainloop
