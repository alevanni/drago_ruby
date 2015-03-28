#!/usr/bin/ruby
require './quid.rb'
require './barre_bottoni.rb'
require 'tk'
#un abbozzo dell'interfaccia grafica

class Interfaccia
 # attr_accessor :finestra #in realta' non serve che siano attributi
  attr_accessor :f2
  attr_accessor :barra_sopra
  attr_accessor :barra_sotto
  attr_accessor :canvas #
def initialize
  @finestra=TkRoot.new{
      title "Quid"
  }

  @barra_sopra=Barre_bottoni.new 'top', 'mangia', 'cura'
   
  @f2 = TkFrame.new {
        relief 'groove'
        borderwidth 10
        height 200
        width 300
        pack('side' => 'top')
  }
  @barra_sotto=Barre_bottoni.new 'bottom', 'gioca', 'lava'

  @canvas=TkCanvas.new(@f2) {
  background 'white'
  pack('padx'=>1, 'pady'=>1, 'side'=>'top', 'expand'=>1)
   }
  @canvas.pack
end

end
a=Interfaccia.new

Tk.mainloop
