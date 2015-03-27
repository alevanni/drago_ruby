class Interfaccia_notebook
  attr_accessor :finestra #in realta' non serve che siano attributi
  attr_accessor :schede {} #l'hash con le opzioni
  attr_accessor :n
def initialize
  @finestra=TkRoot.new {
            height 200
            width  300 
            title "Quid"
  }
  
  @n=Tk::Tile::Notebook.new(@finestra) {
   }
  @f2 = TkFrame.new {
        relief 'groove'
        borderwidth 10
        height 200
        width 300
        background "grey"
        padx 20
        pady 20
        pack('side' => 'top')
  }
end

end
a=Interfaccia.new
Tk.mainloop
