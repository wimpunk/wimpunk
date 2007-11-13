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
  #  afdeling wordt enkel toegekend als die nog niet gekend was
#  dit ter bescherming van chefs die door de klasse afdeling zelf al een afdeling werd toegekend
# indien een afdeling een andere chef wenst, dan moet zij daarvoor zorgen HOE?
  def afdeling=(afdeling)
    @afdeling = afdeling if !@afdeling  
  end
  
  def leider?
    return @team_leider
  end
  
  def to_s
    return "\t#{@naam} uit de afdeling #{@afdeling.code}"
  end
end