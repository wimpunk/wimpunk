require "les3/tekening"

class Tekening_applic
  
  mine = Tekening.new(3)
  mine.lijn()
  mine.body()
  mine.lijn()
  
  mine.alles()
  
  driehoek = Tekening.new(5,'x')
  # ik moet nog kijken naar het voorbeeld van de les
  # maar dit zou ook moeten lukkne
  mine.driehoek(5)
  
  s = String.new("Wim")
  print s[1].to_s
  
end