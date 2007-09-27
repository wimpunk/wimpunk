class Getal
# constructor
#-- interne commentaar
#++ dit komt in rdoc
# fijn om mee te spelen, docente slaagde er niet in :-)

  def initialize(basis=0)
    # naam moet niet gedeclareerd worden, 
    # gewoon door de @ weten we dat die globaal is.
    @basis = basis
  end
  
  def set_basis(basis)
    @basis = basis
  end
  # op deze manier kan je een variable zetten
  def basis=(basis)
    @basis = basis
  end
  
  def deling getal
    Getal.new(@basis / getal)
  end
  
  def to_s
    # zorgen dat de puts werkt
    return @basis.to_s
  end
  
  def deling! getal
    #  met uitroepteken -> verandering van waarde.
    @basis = @basis / getal
  end
  
  def som getal
    @basis = @basis + getal
  end
  
  def val
    @basis
  end
  
  def getal?
    return true
  end
  
  def > getal2
    return @basis > getal2.val
  end
end