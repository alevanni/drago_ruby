require 'tk'


class Barre_bottoni
  attr_accessor :bottone1
  attr_accessor :bottone2
  attr_accessor :f

 def initialize posizione, comando1, comando2
  @f = TkFrame.new {
        relief 'groove'
        borderwidth 10
        height 50
        width 300
        background "grey"
        padx 20
        pady 20
        pack('side' => posizione)
  }
  @bottone1=TkButton.new(@f) {
   text comando1
   pack("side" => "right",  "padx"=> "2", "pady"=> "2")
   }
  @bottone2=TkButton.new(@f) {
   text comando2
   pack("side" => "left", "padx"=> "2", "pady"=> "2")
   }
 end


end

prova=Barre_bottoni.new 'top', 'cibo', 'salute'
Tk.mainloop
