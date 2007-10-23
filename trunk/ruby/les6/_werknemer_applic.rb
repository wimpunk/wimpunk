#...

class Werknemer_applic
  def maak_lijst
    leider = true
    @lijst = Werknemer.enkel_naam('Jan'), Werknemer.new('Els', leider) \
      , Werknemer.enkel_naam('Leen'), Werknemer.new('Piet', leider) 
  end
  
  def team_leiders
    lijst = []
#. . .
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
puts "volgende werknemers leiden geen team: "
