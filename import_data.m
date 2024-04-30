import_struct = importdata('C:\Users\timik\OneDrive\Namizje\FAKS\MAGISTERIJ\2. Letnik\ostri_robovi_diagonala.txt');
S = import_struct(1,:);
ostri_l = (S.data(:,1))';

ostri_p = (S.data(:,2))';



import_struct = importdata('C:\Users\timik\OneDrive\Namizje\FAKS\MAGISTERIJ\2. Letnik\zaobleni_robovi_diagonala.txt');
T = import_struct(1,:);
zaobljeni = T.data';


import_struct = importdata('C:\Users\timik\OneDrive\Namizje\FAKS\MAGISTERIJ\2. Letnik\ostri_robovi_el_polje_diagonala.txt');
T = import_struct(1,:);
ostri_el_polje = T.data';

import_struct = importdata('C:\Users\timik\OneDrive\Namizje\FAKS\MAGISTERIJ\2. Letnik\zaobljeni_robovi_el_polje_diagonala.txt');
T = import_struct(1,:);
zaobljeni_el_polje = T.data';

import_struct = importdata('C:\Users\timik\OneDrive\Namizje\FAKS\MAGISTERIJ\2. Letnik\papir_el_polje.txt');
T = import_struct(1,:);
papir_el_polje = T.data';

import_struct = importdata('C:\Users\timik\OneDrive\Namizje\FAKS\MAGISTERIJ\2. Letnik\el_polje_brez_izolacija.txt');
T = import_struct(1,:);
el_polje_brez_izolacije = T.data';




