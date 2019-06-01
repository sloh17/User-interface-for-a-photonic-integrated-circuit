function phase = amplitude_to_phase(a)
% this file will take in all 15 amplitudes intended,
% then calculate the required phase for those amplitudes 
% and then output the required current to accuire those amplitudes
phase = zeros(1,15);
main_input_amp =a(1) + a(2) + a(3) + a(4) + a(5) + a(6) + a(7) + a(8) + a(9) + a(10) + a(11) + a(12) + a(13) + a(14) + a(15) + a(16) ;
% amplitude to phase
% layer 1
phase(8) = (a(9) + a(10) + a(11) + a(12) + a(13) + a(14) + a(15) + a(16))/main_input_amp;
% layer 2 - UP
phase(4) = (a(5) + a(6) + a(7) + a(8))/(a(1) + a(2) + a(3) + a(4) + a(5) + a(6) + a(7) + a(8));
% layer 3 - UP
phase(2) = (a(3) + a(4))/(a(1) + a(2) + a(3) + a(4));
phase(6) = (a(7) + a(8))/(a(5) + a(6) + a(7) + a(8));
% layer 4 - UP
phase(1) = (a(2))/(a(1) + a(2));
phase(3) = (a(4))/(a(3) + a(4));
phase(5) = (a(6))/(a(5) + a(6));
phase(7) = (a(8))/(a(7) + a(8));
% layer 2 - DOWN
phase(12) = (a(13) + a(14) + a(15) + a(16))/(a(9) + a(10) + a(11) + a(12) + a(13) + a(14) + a(15) + a(16));
% la(yer 3 - DOWN 
phase(10) = (a(11) + a(12))/(a(9) + a(10) + a(11) + a(12));
phase(14) = (a(15) + a(16))/(a(13) + a(14) + a(15) + a(16));
% layer 4 - DOWN 
phase(9) = (a(10))/(a(9) +a(10));
phase(11) = (a(12))/(a(11) + a(12));
phase(13) = (a(14))/(a(13) + a(14));
phase(15) = (a(16))/(a(15) + a(16));
phase = round(phase,2);
end