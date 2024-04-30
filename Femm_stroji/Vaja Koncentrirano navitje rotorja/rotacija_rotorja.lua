showconsole()
clearconsole()

for kot = 0, 360, 10 do
    mi_modifyboundprop("gap", 10, kot)   --nastavimo kot rotorja
    mi_analyze(1)
    mi_loadsolution()

    tok, nap, psi  = mo_getcircuitproperties("A")
    print(kot, psi)
end
