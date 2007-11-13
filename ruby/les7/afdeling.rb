require "les6/werknemer"
class Afdeling
  
  attr_accessor :werknemers
  attr_reader :code,:omschrijving,:chef
  
  
  def initialize(code, omschrijving)
    @code = code
    @omschrijving = omschrijving
    @werknemers = [];
  end
  
  def to_s
    "#{@code} #{@omschrijving} chef:#{@chef?@chef:'nog geen chef'}"
  end
  
  def add_werknemer werknemer
    @werknemers.add = werknemer;
  end
  
  # bij het zetten van de chef wordt ook de afdeling van die chef goed 
  # gezet.  Het veranderen van die afdeling wordt beschermd in het 
  # onderdeel werknemer.
  def chef=(werknemer)
    if (werknemer.instance_of?(Werknemer))
      @chef = werknemer
      werknemer.afdeling = self
    end
  end
end
#
#puts(mine=Afdeling.new(69,"mijn afdeling"))
#puts(mine.code)
#puts mine.omschrijving