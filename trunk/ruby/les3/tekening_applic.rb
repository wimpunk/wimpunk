require "les3/tekening"

class Tekening_applic
  
  mine = Tekening.new(3)
  mine.lijn()
  mine.body()
  mine.lijn()
  
  mine.alles()
  
  driehoek = Tekening.new(5,'x')
  # ik moet nog kijken naar het voorbeeld van de les
  # maar dit zou ook moeten lukken
  1.upto(5) { |i| mine.driehoek(i) }
  
end