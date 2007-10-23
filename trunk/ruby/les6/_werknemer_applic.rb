require "les4/format_vraag"
require "les6/werknemer"

class Werknemer_applic
  def maak_lijst
    leider = true
    @lijst = Werknemer.enkel_naam('Jan'), Werknemer.new('Els', leider) , \
    Werknemer.enkel_naam('Leen'), nil, Werknemer.new('Piet', leider) 
  end
  
  def lijst_leider(gewenste_toestand)
    # initiatie
    #    * een lege lijst
    #    * cnt starten op -1 zodat een cnt+=1 kan werken.  Hierdoor wordt ook 0.
    lijst = []
    cnt=-1
    
    # voor elke element in de lijst genaamd member:
    # * kijk of het een Werknemer is
    # * als het leiderschap zich in de gewenste toestand bevind: steek hem erbij
    @lijst.each do
      |member|
      next if ! member # we testen ook of we geen nil hebben
      # deze test levert waarschijnlijk een net iets te zwaar resultaat op.
      # maar het voorkomt wel dat er getest wordt op het leiderschap van apen
      next if ! member.instance_of?(Werknemer) 
      lijst[cnt+=1] = member if member.leiderschap?(gewenste_toestand)
      
      # Er is natuurlijk ook wel een fijne manier, de all-in-one oplossing
      # lijst[cnt+=1]=member if (member && member.leider?)
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
