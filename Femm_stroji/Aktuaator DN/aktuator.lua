mi_saveas("temp.fem")

showconsole()
clearconsole()

for x = 0.5, 5.5, 0.25 do
    mi_analyze(1)    --1 pomeni, da ne izpisuje okna poteka izračuna
    mi_loadsolution()

    mo_selectblock(3, 38) --izberemo bloke, ki so v skupini 1
    F = mo_blockintegral(19)  --Izračun sile na kotvo
    
    tok, nap, psi = mo_getcircuitproperties("navitje")
    L = psi/tok --izračun induktirvnosti

    print(x, F, L)

    mi_selectgroup(1) --izberemo kotvo
    mi_movetranslate(0, 0.25) --premaknemo kotvo za 0.25 mm navzgor
end

