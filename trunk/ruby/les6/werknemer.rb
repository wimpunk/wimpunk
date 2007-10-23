class Werknemer
  
  def initialize naam='onbekend',functie=false 
    @naam = naam
    @functie = functie
  end
  
  def self.enkel_naam naam='onbekend'
    Werknemer.new(naam,false)
  end
  
  def leider
    @functie
  end
  
  def to_s
    @naam.to_s
  end
end