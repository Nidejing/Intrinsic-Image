% take a picture with kinnect, save depth and normal file
DIR = 'data/0506123/'
fpath = fullpath(DIR, 'rgb.png');
npath = fullpath(DIR, 'normal.mat');
% write the RGB to a PNG file
convertData(DIR, fpath, npath);

% 3. in shell call the python script = write R.png
system(sprintf('python ../MIT-intrinsic/retinex_aj.py %s %s',...
               fpath,DIR));


path = fullpath(DIR, 'R.png');

% 4. estimate S
estiamteS(fpath, rpath, npath)

