function dataset = tokeniser(data)

dataset = [];
vocabList = importdata('vocabulary.mat');

for i = [1:length(data)]
    i

    X = zeros(size(vocabList'));

    email_content = data{i};

    while ~isempty(email_content)
	[str, email_content] = strtok(email_content);

	idx = find(strcmp(str, vocabList));
	if all(size(idx) == [1,0])
	    continue;
	end

	X(idx) = 1;
    end
 
    dataset = [dataset; X];

end
