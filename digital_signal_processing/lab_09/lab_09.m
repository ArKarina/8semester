function lab_09()
    I=double(imread('bimage18.bmp')) / 255;

    figure;
    imshow(I); 
    title('Исходное изображение');

%     PSF=fspecial('motion', 35, 205);
    PSF = fspecial('disk', 1);
    [J1 P1]=deconvblind(I, PSF);
    figure;
    imshow(J1);
    title('Восстановленное изображение'); 
end