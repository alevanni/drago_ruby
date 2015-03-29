require 'tk'


class Barre_bottoni
  attr_accessor :bottone1
  attr_accessor :bottone2
  attr_accessor :f
  attr_accessor :canvas1
  attr_accessor :canvas2
 def initialize dove, comando1, comando2
  @f = TkFrame.new {
        relief 'groove'
        borderwidth 10
        height 30
        width 50
        background "grey"
        padx 2
        pady 2
        pack('side'=>dove)
  }
  @canvas1=TkCanvas.new(@f){
    background 'grey'
    height 40
    width 30
    grid('row'=>0,'column'=> 0) 
   }
  @canvas2=TkCanvas.new(@f){
   background 'grey'
   height 40
    width 30
   grid('row'=>0,'column'=> 3)
   }
  @bottone1=TkButton.new(@f) {
   text comando1
   height 2
   width 4
   grid('row'=>0,'column'=> 1)
   #inserisci i comandi!!
   }
  @bottone2=TkButton.new(@f) {
   text comando2
   height 2
   width 4
   #inserisci i comandi!!
   grid('row'=>0,'column'=> 2)
   }
  
 end


end

#prova=Barre_bottoni.new 'top', 'cibo', 'salute'
#Tk.mainloop
