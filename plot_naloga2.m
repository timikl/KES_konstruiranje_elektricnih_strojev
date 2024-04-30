%% POTENCIAL PO DIAGONALI OSTRI vs. ZAOBLJENI
% plot(ostri_l, ostri_p)
% title('Elektricni potencial vodnika z ostrimi robovi','Interpreter','latex')
% hold on
% plot(zaobljeni(1,:), zaobljeni(2,:))
% legend('Zaobljeni robovi', 'Ostri robovi','Interpreter','latex')
% xlabel('Dolzina [mm]' ,'Interpreter','latex')
% ylabel('Napetost [V]' ,'Interpreter','latex')

%% El POLJE PO DIAGONALI OSTRI vs. ZAOBLEJNI
figure(1)
plot(ostri_el_polje(1,:), ostri_el_polje(2,:))
title('Elektricno polje','Interpreter','latex')
hold on
plot(zaobljeni_el_polje(1,:), zaobljeni_el_polje(2,:))

legend('Ostri robovi', 'Zaobljeni robovi', 'Interpreter','latex')
xlabel('Dolzina [mm]' ,'Interpreter','latex')
ylabel('Napetost [V]' ,'Interpreter','latex')

%% EL polje tocka 10,10 do 50,50 brez in z izolacijo
figure(2)
plot(papir_el_polje(1,:), papir_el_polje(2,:))
title('Elektricno polje','Interpreter','latex')
hold on
plot(el_polje_brez_izolacije(1,:), el_polje_brez_izolacije(2,:))

legend('Ostri robovi', 'Zaobljeni robovi', 'Interpreter','latex')
xlabel('Dolzina [mm]' ,'Interpreter','latex')
ylabel('Napetost [V]' ,'Interpreter','latex')





