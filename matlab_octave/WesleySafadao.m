1; %Prevent Octave from thinking this is a function file

function safadoCalculus(year, month, day)
  safado = sum(1:month) + ((year/100) * (50 - day));
  anjo = 100 - safado;
  
  disp (['Você é ', num2str(safado), '% safado e ', num2str(anjo), '% anjo']);
end





