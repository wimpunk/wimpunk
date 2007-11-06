class Werknemer_2
  
  attr_reader :afdeling
  attr_reader :naam
  
  def initialize(naam, team_leider)
    @naam = naam
    @team_leider = team_leider;
  end
  def Werknemer_2.enkel_naam naam
    self.new(naam, false) if naam
  end
   
  def leider?
    return @team_leider
  end
  
  def to_s
    return "\t#{@naam} uit de afdeling #{@afdeling.code}"
  end
end