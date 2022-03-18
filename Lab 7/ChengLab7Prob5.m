%This script will print one random element from each cell array to create a sentence

% EstherCheng
% ENGR 405
% ChengLab7Problem5

clear

%Creates three cell array variables of character vectors
names = {'Harry', 'Xavier', 'Sue'};
verbs = {'loves', 'eats'};
nouns = {'sushi', 'rocks', 'staples'};

%Prompt user for how many sentences they would like
numSentences = input('Enter how many sentences you would like: ');

for i = 1:numSentences
    %Pick out random words from the cell arrays, form a random sentence and print out
    sentence{1} = names{randi(numel(names))};
    sentence{2} = verbs{randi(numel(verbs))};
    sentence{3} = nouns{randi(numel(nouns))};
    fprintf("%s %s %s\n", sentence{1:3});
end