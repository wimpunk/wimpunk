require "les6/werknemer"
require "les7/afdeling"
class Werknemer_2_applic
  def maak_werknemers
    leider = true
    @werknemers = Werknemer.enkel_naam('Jan'), Werknemer.new('Els', leider), Werknemer.enkel_naam('Leen'), Werknemer.new('Piet', leider) 
  end
  
  def assigneer_afdelingen
    #  simuleer volgende situatie: de lijst bevat 4 werknemers, 
    #  de eerste 2 werknemers zijn chefs van een bepaalde afdeling,
    #  de andere behoren om beurten tot één van de twee afdelingen
    
    # stap_1 maak de 2 afdelingen en bewaar ze in een lijst 
    @afdelingen = Afdeling.new(1,"eerste afdeling"), Afdeling.new(2,"tweede afdeling")
    
    # stap_2 ken 1ste/2de afdeling toe aan 1ste/2de werknemer uit de lijst
    @afdelingen[0].chef = @werknemers[0]
    @afdelingen[1].chef = @werknemers[1]
    
    # stap_3 ken een afdeling toe aan elke werknemer 
    # OPGELET: de chef moet uiteraard tot zijn afdeling behoren (blijven) behoren
    @werknemers[0].afdeling = @afdelingen[0]
    @werknemers[1].afdeling = @afdelingen[1]
    @werknemers[2].afdeling = @afdelingen[0]
    @werknemers[3].afdeling = @afdelingen[1]
    
    
    @werknemers.each {|arbeider|
      # doe hier iets... 
      #arbeider.afdeling = @afdelingen[0]
      
    }
    
    
  end
  
  def wijzig_afdeling_van_eerste_chef
    # een andere afdeling mag niet kunnen toegekend 
    # worden aan een werknemer die reeds chef is
    puts "\nvoor wijzigen afdeling: \n\t#{@werknemers[0]}"
    @werknemers[0].afdeling = @afdelingen[1]
    puts "NA wijzigen afdeling: \n\t#{@werknemers[0]}"    
  end
  
  def toon_afdelingen
    @afdelingen.each {|afd|
      puts afd
    }
    
  end
  
  def toon_werknemers
        @werknemers.each {|arbeider|
      # doe hier iets... 
      #arbeider.afdeling = @afdelingen[0]
      puts(arbeider)
    }
    
  end
  
end

# client applicatie die afdelingen toekent aan de werknemers en daarna de lijsten afbeeldt

applic = Werknemer_2_applic.new
applic.maak_werknemers
applic.assigneer_afdelingen
applic.toon_afdelingen
applic.toon_werknemers
#applic.wijzig_afdeling_van_eerste_chef