class Afdeling_2
  # volgende gaat niet omdat de setter meer moetn doen dan enkel toekennen
  #  attr_accessor :chef
  attr_reader :chef
  attr_reader :code
  def initialize(code, omschrijving)
    @code = code
    @omschrijving = omschrijving
  end
#een afdeling zal momenteel maar één keer een chef kunnen worden toegekend
#omdat de setter in klasse Werknemer enkel toekent indien nog geen afdeling gekend was
#later op te lossen via compositie met Functies 
  def chef=(werknemer)
    if (werknemer.instance_of?(Werknemer_2))
      @chef = werknemer
      werknemer.afdeling=self
    end
  end
  
  def to_s
  #  merk op dat zowel code als chef zonder @ kan, maar omschrijving niet (geen attr_reader ervoor)
    "\t#{code} - #{@omschrijving} " + (@chef ? ", heeft als verantwoordelijke: #{chef.naam}" : '')
  end
end