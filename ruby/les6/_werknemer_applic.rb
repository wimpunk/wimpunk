require "les4/format_vraag"
require "les6/werknemer"

class Werknemer_applic
  def maak_lijst
    leider = true
    @lijst = Werknemer.enkel_naam('Jan'), Werknemer.new('Els', leider) \
    , Werknemer.enkel_naam('Leen'), nil, Werknemer.new('Piet', leider) 
  end
  
  def lijst_leider(gewenste_toestand)
    # initiatie
    lijst = []
    cnt=0
    
    # voor elke element in de lijst genaamd member:
    # * kijk of het een Werknemer is
    # * als het leiderschap zich in de gewenste toestand bevind: steek hem erbij
    @lijst.each do
      |member|
      next if ! member 
      # next if ! member.instance_of?(Werknemer) 
      next if ! member.leiderschap?(gewenste_toestand)
      lijst[cnt] = member
      cnt+=1      
    end
    return lijst
  end
  
  def team_leiders
    return lijst_leider(true)
  end
  
  def geen_team_leiders
    return lijst_leider(false)
  end
  
end

applic = Werknemer_applic.new
applic.maak_lijst
puts '...: 1 :...'
puts "de team leiders zijn: " 
puts applic.team_leiders
puts "volgende werknemers leiden geen team: "
puts applic.geen_team_leiders
