mi_saveas("tmp.fem") -- shranimo model v začasno datoteko
showconsole() -- odpremo LUA konzolo
clearconsole() -- zbrišemo vsebino konzole

korak = 10

print("kot/deg","M/Nm","L/H") -- izpis glave tabele
for kot = 0, 180, korak do
  mi_analyze(1) -- analiza modela (1 --> ne izpisujemo poteka izračuna)
  mi_loadsolution() -- naložimo rešitev analize v postprocesor

  tok,nap,psi = mo_getcircuitproperties("A")
  L = psi/tok -- izračun induktivnosti

  mo_groupselectblock(1) -- izbira bloka kotve aktuatorja 
  M= mo_blockintegral(22)  -- izračun navora
  print(kot,M,L) -- izpis rezultatov

  mi_selectgroup(1) -- izbira geometrije kotve v predprocesorju
  mi_moverotate(0, 0, korak) -- rotacija okrog (0,0) za korak 5 stopinj
end    

