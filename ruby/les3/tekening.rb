class Tekening
  
  def initialize( aantal, teken=".")
    @aantal = aantal
    @teken = teken
  end
  
  def lijn()
   (1..@aantal).each do
      print(@teken)
    end
    printf("\n")
  end
  
  def body()
   (2..@aantal-1).each do
      print(@teken)
       (2..@aantal-1).each do
        print(' ')
      end
      print(@teken)
      printf("\n")
    end
  end
  
  def alles()
    lijn()
    body()
    lijn()
  end
  
  def driehoek()
    for i in (1..@aantal)
      for j in (1..i)
        if (j==1 || j==i) 
          print(@teken)
        elsif (i==@aantal)
          print(@teken)
        else
          print(' ')
        end
      end
      printf("\n")
    end
  end
  
end
