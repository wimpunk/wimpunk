require "les6/werknemer"
class Afdeling
 
 attr_accessor :chef, :werknemers
 attr_reader :code,:omschrijving
 
 
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
 
end
#
#puts(mine=Afdeling.new(69,"mijn afdeling"))
#puts(mine.code)
#puts mine.omschrijving