#!/usr/bin/ruby
require './quid.rb'
require './barre_bottoni.rb'
require 'tk'
require './Quid_canvas'
#un abbozzo dell'interfaccia grafica

class Interfaccia
 # attr_accessor :finestra #in realta' non serve che siano attributi
  attr_accessor :f2
  attr_accessor :barra_sopra
  attr_accessor :barra_sotto
  attr_accessor :mycanvas #
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

  @mycanvas=Quid_canvas.new @f2
end

end
a=Interfaccia.new

Tk.mainloop
