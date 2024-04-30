--Program za izracun toka prostega teka transf

showconsole()

--Vhodni podatki 
U1 = 230 --napetost napajanja
f = 50 --frekvenca napajanja

ia = 0 --spodnja meja toka
ib = 10 --zgornja meja toka

repeat 
    i = (ia + ib)/2 --tok pir katerem analiziramo
    mi_modifycircprop("primar", 1, i)  --mi_modifycircprop("CircName",propnum,value)
    mi_analyze()  --analiziranje modela
    mi_loadsolution() --postprocesor

    --v postprocesorju bojo ukazi začeli z mo_
    tok, nap, psi = mo getcircuitproperties("primar") --preberemo izracunane vrednosti
    Uind = 2*pi*f*psi/sqrt(2) --inducirana napetost

    if Uind < U1 then
        ia = i
    else 
        ib = i
    end 

    print(i, Uind)

    eps = abs((Uind-U1)/U1) --realativno odstopanje inducirane napetosti
    
until eps < 0.001