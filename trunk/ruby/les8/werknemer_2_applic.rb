require "les8/_werknemer_2"
require "les8/afdeling_2"
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
    afdel_AD = Afdeling_2.new("AD", "Application & Development")
    afdel_HW = Afdeling_2.new("HW", "Hardware")
    @afdelingen = [afdel_AD, afdel_HW]
    
    # stap_2 ken 1ste/2de werknemer als chef toe aan 1ste/2de afdelingen uit de lijst
    afdel_AD.chef = @werknemers[0]
    afdel_HW.chef = @werknemers[1]

    # stap_3 ken een afdeling toe aan elke werknemer 
    # OPGELET: de chef moet uiteraard tot zijn afdeling behoren (blijven) behoren
#    @werknemers[2].afdeling = afdel_AD
#    @werknemers[3].afdeling = afdel_HW    
    @werknemers.each{ |werknemer|
      werknemer.afdeling = afdel_AD
    }
  end
  
  def wijzig_afdeling_van_eerste_chef
  end
  
  def toon_afdelingen
    puts "\nlijst met alle afdelingen: "
    toon_lijst(@afdelingen)
  end
  
  def toon_werknemers
    puts "\nlijst met alle werknemers "
    toon_lijst(@werknemers)
  end
  
  private
  def toon_lijst(lijst)
    for element in lijst
      puts element
    end
  end
end

# client applicatie die afdelingen toekent aan de werknemers en daarna de lijsten afbeeldt

applic = Werknemer_2_applic.new
applic.maak_werknemers
applic.assigneer_afdelingen
applic.toon_afdelingen
applic.toon_werknemers
#applic.wijzig_afdeling_van_eerste_chef