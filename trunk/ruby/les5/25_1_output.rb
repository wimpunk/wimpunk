#!/usr/bin/ruby

for dag in (1...8) # deze lijst eindigt bij 7!
  puts("dag #{dag}")
  case (dag)
  when 1: puts('maandag')
  when 2: puts('dinsdag')
  when 3: puts('woensdag')
  when 4: puts('donderdag')
  when 5 then puts('vrijdag')
    puts('...bijna weekend')
  when 6,7
    print('weekend ') 
    puts('- zaterdag') if dag == 6 # de if wordt geevalueerd in deze lijn
    puts('- zondag') if dag == 7 # de if wordt geevalueerd in deze lijn
  # deze wordt nooit weergegeven
  when 5: puts('nogmaals vrijdag')
  else puts('ongeldige dag...')
  end
end