%This script will read these data in and plot the temperatures for the three locations separately in one Figure Window

% EstherCheng
% ENGR 405
% ChengLab7Problem2

load("/Users/esthercheng/desktop/ENGR 405/aveTemp.dat")
[row, col] = size(aveTemp);

%Create three subplots and plot the data for each location
for i = 1:row
    %%
    subplot(1, 3, i)
    plot(aveTemp(i, 2:end), 'or')

    %Include title and label for axes
    title(sprintf('Location %d', aveTemp(i, 1)))
    xlabel('Month')
    ylabel('Average High Temps')
end