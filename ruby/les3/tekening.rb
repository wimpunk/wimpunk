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
    # een geformateerde string
    # deze zou ook moetne kunnen door geen sprintf te 
    # gebruiken
    lijn = sprintf("#@teken%#{@aantal -1}s\n",@teken)  
    2.upto(@aantal-1) do 
      printf(lijn) 
    end
    
    #     (2..@aantal-1).each do
    #      print(@teken)
    #       (2..@aantal-1).each do
    #        print(' ')
    #      end
    #      print(@teken)
    #      printf("\n")
    #    end
    
  end
  
  def alles()
    lijn()
    body()
    lijn()
  end
  
  # TODO: deze een beetje opkuisen
  # http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_integer.html#Integer.upto
  
  
  def driehoek(cnt=@aantal)
    for i in (1..cnt)
      for j in (1..i)
        if (j==1 || j==i) 
          print(@teken)
        elsif (i==cnt)
          print(@teken)
        else
          print(' ')
        end
      end
      printf("\n")
    end
  end
  
end
