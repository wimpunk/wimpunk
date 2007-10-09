require "les4/format_vraag"

1.upto(3) do
  dag = FormatVraag.new("Geef dagnummer")
  case (dag.to_i)
  when 1..5: puts("weekdag")
  when 6,7: puts("weekend") # beperkte rage, kan anders aangegeven worden.
  else puts("Geen dag tijdens mijn week")
  end
  dag.lijn()
end