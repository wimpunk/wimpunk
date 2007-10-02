 # vraag de naam van de gebruiker en beeld een welkomst bericht af
  print "graag jouw naam:"
  naam = gets
  printf("Welkom %s\n", naam)
  
  # vragen naar een geheel getal < 100
  begin
  print "Geef een geheel < 100:"
  geheel = gets
  geheel = Integer(geheel)
  end until ( geheel < 100 )
  
  # vragen naar een gebroken getal
  print 'geef een gebroken getal van maximum 3 decimalen: '
  fl = gets.to_f
  #fl = Float(fl)
  
  # afbeelden
  printf("\tgeheel: %1$5i\n\tgeheel: %1$05i\n\t float: %2$0.2f\n", geheel, fl);
  

# gets  