require "intro/figuur"
class Figuur_applic
  breedte = 5
  figuur = Figuur.new
  figuur.horizontaal(breedte)
  1.upto(breedte/2){ figuur.zijkant }
  figuur.horizontaal(breedte)
  
  figuur = Figuur.new('£')
  figuur.horizontaal(1)
  figuur.schuin(breedte-2) 
  figuur.horizontaal(breedte)
end