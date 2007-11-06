require "les7/_werknemer_2"
require "les7/afdeling"
class Werknemer_2_applic
  def maak_werknemers
    leider = true
    @werknemers = Werknemer_2.enkel_naam('Jan'), Werknemer_2.new('Els', leider), Werknemer_2.enkel_naam('Leen'), Werknemer_2.new('Piet', leider) 
  end
  
  def assigneer_afdelingen
    #  simuleer volgende situatie: de lijst bevat 4 werknemers, 
    #  de eerste 2 werknemers zijn chefs van een bepaalde afdeling,
    #  de andere behoren om beurten tot één van de twee afdelingen
    
    # stap_1 maak de 2 afdelingen en bewaar ze in een lijst 

    @afdelingen = []
    
    # stap_2 ken 1ste/2de afdeling toe aan 1ste/2de werknemer uit de lijst
  
    
    
    # stap_3 ken een afdeling toe aan elke werknemer 
    # OPGELET: de chef moet uiteraard tot zijn afdeling behoren (blijven) behoren

  
  
  end
  
  def wijzig_afdeling_van_eerste_chef
    # een andere afdeling mag niet kunnen toegekend 
    # worden aan een werknemer die reeds chef is
    puts "\nvoor wijzigen afdeling: \n\t#{@werknemers[0]}"
    @werknemers[0].afdeling = @afdelingen[1]
    puts "NA wijzigen afdeling: \n\t#{@werknemers[0]}"    
  end
  
  def toon_afdelingen
    
  end
  
  def toon_werknemers
    
  end
  
end

# client applicatie die afdelingen toekent aan de werknemers en daarna de lijsten afbeeldt

applic = Werknemer_2_applic.new
applic.maak_werknemers
applic.assigneer_afdelingen
#applic.toon_afdelingen
#applic.toon_werknemers
#applic.wijzig_afdeling_van_eerste_chef