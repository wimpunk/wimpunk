require "les7/afdeling"
class Werknemer
  attr_accessor :afdeling
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
  # hint: hier geen to_s van de afdeling gebruiken aangezien ook de to_s van werknemer
  # wordt opgeroepen om de naam van de chef aan te geven...
    "#{@naam}#{@functie?' is een leider':' is een vlijtige werker'} en zit bij afdeling #{@afdeling.code} #{@afdeling.omschrijving}"
  end
end