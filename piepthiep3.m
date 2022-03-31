[y1, fs] = audioread("C:\Users\SCK\Desktop\test.wav"); 
[y2, fs] = audioread("C:\Users\SCK\Desktop\B1.wav");
[a,b] = size(y1);
MSE = 0;
NMSE_n = 0;
NMSE_d = 0;
for i=1:a
    %MSE
    form_mse = (y1(i)-y2(i))^2;
    %NMSE
    form_nmse_n = (y1(i)-y2(i))^2;
    form_nmse_d = y1(i)^2;    
    MSE = MSE + form_mse;
    NMSE_n = NMSE_n + form_nmse_n;
    NMSE_d = NMSE_d + form_nmse_d;
end
Result_MSE = MSE/a;
Result_NMSE = NMSE_n/NMSE_d;
