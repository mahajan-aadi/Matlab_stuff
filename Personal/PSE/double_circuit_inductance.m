%double circuit

format long
clc;
clear all;
close all;

radius=0.75*10^-2;
ac_=4;
bb_=5.5;
ca_=4;
vertical_ab=3;
vertical_bc=3;

r_=exp(-(1/4))*radius;
diff_a_b=(ac_-bb_)/2;
diff_a_c=(ac_-ca_)/2;
diff_b_c=(bb_-ca_)/2;

ab_=sqrt(vertical_ab^2+(ac_-diff_a_b)^2);bc_=ab_
aa_=sqrt((vertical_ab+vertical_bc)^2+(ac_-diff_a_c)^2);cc_=aa_
ac=sqrt((vertical_ab+vertical_bc)^2+(diff_a_c)^2);c_a_=ac
ab=sqrt(vertical_ab^2+(diff_a_b)^2);c_b_=ab
bc=sqrt(vertical_bc^2+(diff_b_c)^2);a_b_=bc
cb_=sqrt(vertical_bc^2+(ca_+diff_b_c)^2);ba_=cb_

ds1=(r_*aa_*aa_*r_)^(1/4)
ds2=(r_*bb_*bb_*r_)^(1/4)
ds3=(r_*cc_*cc_*r_)^(1/4)
ds=(ds1*ds2*ds3)^(1/3)

dab=(ab*ab_*ba_*a_b_)^(1/4)
dbc=(bc*bc_*cb_*c_b_)^(1/4)
dca=(ac*ca_*ac_*c_a_)^(1/4)
dm=(dab*dbc*dca)^(1/3)

l_per_km=(10^-7)*2*log(dm/ds)*1000