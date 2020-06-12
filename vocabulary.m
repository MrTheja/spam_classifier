function [voc, wordlength] = vocabulary(spam)

%making the whole spam list a single string
string = '';
for i = [1: size(spam)(1)]
    string = strcat ( string, {' '}, spam(i) );
end

%splitting the text into an array of words
words = strsplit (string{1});
[a,b] = size(words);
words = reshape(words,[b,a]);

%creating a list with words and their frequencies
wordlist = unique(words);
%[a,b] = size(wordlist);
%wordlist = reshape(wordlist,[b,a]);

voc = {};

wordlength = [];

for i = [1: length(wordlist)]
    i
    idx = strcmp(words, wordlist(i));
    no = sum(idx);
    if (no > 300)
	voc = [voc; wordlist(i)];
	wordlength = [wordlength; no];
    end
end
%while ~isempty(words)
%    cmp = words(1);
%    idx = find(strcmp(cmp,words));
%    if (length(idx)>4000)
%        wordlist = [wordlist; cmp]
%        wordlength = [wordlength; length(idx)]
%    end
%    words(idx) = [];
