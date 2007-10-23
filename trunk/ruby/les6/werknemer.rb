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
    "#{@naam}#{@functie?' is een leider':' is een vlijtige werker'}"
  end
end