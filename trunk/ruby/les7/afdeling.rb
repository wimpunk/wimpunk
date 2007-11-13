require "les6/werknemer"
class Afdeling
 
 attr_accessor :chef
 attr_reader :code,:omschrijving
 
 def initialize(code, omschrijving)
   @code = code
   @omschrijving = omschrijving
 end
 
  def to_s
    "#{@code} #{@omschrijving} chef:#{@chef?@chef:'nog geen chef'}"
  end
 
end
#
#puts(mine=Afdeling.new(69,"mijn afdeling"))
#puts(mine.code)
#puts mine.omschrijving