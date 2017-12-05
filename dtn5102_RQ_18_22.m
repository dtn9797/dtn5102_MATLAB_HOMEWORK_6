%{
Duy Nguyen ENGR1300-005 1-5-2017
Problem Statement: Display the explaination and grade range of each letter 

Variables: 
gCA - grade cell array
choice - choice index user chooses
%}
clear 
clc
% Set grade cell array
gCA={'A','B','C','D','F'};
% Display the menu
choice=menu('Select the grade earned:',gCA{:});
% Display the explaination and grade range of each letter depend on user's choice
if choice==1
    fprintf('If you earned the letter grade %s, your numeric grade is in the range: 90 <= grade.\n',gCA{1});
elseif choice==2
    fprintf('If you earned the letter grade %s, your numeric grade is in the range: 80 <= grade < 90.\n',gCA{2});
elseif choice==3
    fprintf('If you earned the letter grade %s, your numeric grade is in the range: 70 <= grade < 80.\n',gCA{3});
elseif choice==4
    fprintf('If you earned the letter grade %s, your numeric grade is in the range: 60 <= grade < 70.\n',gCA{4});
elseif choice==5
    fprintf('If you earned the letter grade %s, your numeric grade is in the range: grade < 60.\n',gCA{5});
end

