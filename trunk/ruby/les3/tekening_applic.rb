require "les3/tekening"

class Tekening_applic
  
  mine = Tekening.new(3)
  mine.lijn()
  mine.body()
  mine.lijn()
  
  mine.alles()
  
  driehoek = Tekening.new(5,'x')
  driehoek.driehoek()
  
end