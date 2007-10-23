class Werknemer
  
  def initialize naam,functie
    @naam = naam
    @functie = functie
  end
  
  def self.enkel_naam naam='onbekend'
    Werknemer.new(naam,false)
  end
  
  def leider?
    @functie
  end
  
  def leiderschap?(toestand)
    @functie == toestand
  end
  
  def to_s
    @naam.to_s + " - leider: " + @functie.to_s
  end
end