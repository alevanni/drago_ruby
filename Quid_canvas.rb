
class Quid_canvas
attr_accessor :canvas
attr_accessor :stanze #hash delle stanze
 def initialize dove
  @canvas=TkCanvas.new(dove) {
  background 'white'
  pack('padx'=>1, 'pady'=>1, 'side'=>'top', 'expand'=>1)
   }
  @canvas.pack
 end

end
