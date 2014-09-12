function [ss]=waitforbuttonpressFS
%waitforbuttonpressFS produces a warning message when user closes the figure he is interacting with 
%
% Copyright 2008-2014
% Written by FSDA team
%
% Last modified 08-Dec-2013
%
%

%% Beginning of code
try
    ss=1;
    ss=waitforbuttonpress;
catch ME
    if strcmp(ME.message,'waitforbuttonpress exit because all figures have been deleted')
        disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
        disp('The figure you are interacting with has been deleted: PROCESS ENDED');
        disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
        ss=1;
    end
end
end