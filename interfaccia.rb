#!/usr/bin/ruby
require './quid.rb'
require 'tk'
#un abbozzo dell'interfaccia grafica

class Interfaccia
  attr_accessor :finestra #in realta' non serve che siano attributi
 attr_accessor :f2
def initialize
  @finestra=TkRoot.new {
            height 200
            width  300 
            title "Quid"
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
