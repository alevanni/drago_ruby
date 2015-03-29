#!/usr/bin/ruby
require './quid.rb'
require './barre_bottoni.rb'
require 'tk'
require './Quid_canvas'
require './Barra_stato.rb'
#un abbozzo dell'interfaccia grafica

class Interfaccia
  attr_accessor :b
  attr_accessor :b2
  attr_accessor :f
  def initialize
   @b=Barre_bottoni.new 'top', 'MANGIA', 'GIOCA'
   @f=TkFrame.new {
     background 'white'
     relief 'groove'
     borderwidth 10
     height 150
     width 200
     pack('side'=>'top')
    }
   @b2=Barre_bottoni.new 'top', 'LAVA', 'CURA'
  end

end
a=Interfaccia.new

Tk.mainloop
