#...
require "les4/format_vraag"
require "les6/werknemer"

class Werknemer_applic
  def maak_lijst
    leider = true
    @lijst = Werknemer.enkel_naam('Jan'), Werknemer.new('Els', leider) \
    , Werknemer.enkel_naam('Leen'), Werknemer.new('Piet', leider) 
  end
  
  def team_leiders
    lijst = []
    cnt=0
    
    @lijst.each do
      |member|
      if member.leider
        lijst[cnt] = member
        cnt+=1
      end
    end
    # lijst[] = @lijst
    return lijst
  end
  
  def geen_team_leiders
    lijst = []
    #. . .
    return lijst
  end
  
end

applic = Werknemer_applic.new
applic.maak_lijst
puts '...: 1 :...'
puts "de team leiders zijn: " 
puts applic.team_leiders
puts "volgende werknemers leiden geen team: "
puts applic.geen_team_leiders
