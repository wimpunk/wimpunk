require "getal/Getal"

class Getal_applic
  
  getal1 = Getal.new(32.0)
  # meerdere instructies kunnen op een lijn als ze gesplits zijn door een ;
  puts getal1.deling(3);puts getal1.deling!(3)
  puts getal1.som(5)
  
  # de ronde haken hoeven niet
  getal2 = Getal.new 32
  puts getal2 = getal2.deling(3)
  # deze is wel leuk :-)
  3.times { puts getal2.som(5) }
  
  getal3 = Getal.new()
  puts getal3.getal?
  
  getal3.basis = 5
  
  puts getal3 > getal2
  
end