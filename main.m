
close all
clc
% Sample data
x = [1, 2, 3, 4, 5];
y = [2, 4, 6, 8, 10];



%{

YEARS (X): 
2000, 1990, 1980, 1970, 1960, 1950, 1940

COST (Y):
211500, 195500, 84500, 23100, 15100, 9564, 3527

%}

%% THIS IS THE FULL DATA SETT
%{
x = [2000, 1990, 1980, 1970, 1960, 1950, 1940];
y = [211500, 195500, 84500, 23100, 15100, 9564, 3527];
%}

%% THIS IS ALL THE DATA FROM THE TIME THAT WE HAVE MEDIAN housing cost
%{
x = [2000, 1990, 1980, 1970];
y = [211500, 195500, 84500, 23100];
%}

x_cost = [2000, 1990, 1980, 1970, 1960, 1950, 1940];
y_cost = [211500, 195500, 84500, 23100, 15100, 9564, 3527];

% Fit a second-degree polynomial model
p_cost = polyfit(x_cost, y_cost, 2);

% Evaluate the polynomial model
x_cost_fit = 1940:1:2000;  % Create a range of x values for prediction
y_cost_fit = polyval(p_cost, x_cost_fit);

% Display the coefficients of the polynomial
disp("cost")
disp(p_cost);

% Plot the original data and the fitted curve
figure(1)
plot(x_cost, y_cost, 'o', x_cost_fit, y_cost_fit);
hold on

%{
    %% INCOME SECTION
X YEAR: 1970, 2000
Y INCOME: 12190, 44920
%}

x_income = [2000, 1990, 1980, 1970, 1960, 1950, 1940];
y_income = [50730, 35350, 21020, 9867, 5620, 3319, 2500];


p_income = polyfit(x_income, y_income, 2);

% Evaluate the polynomial model
x_income_fit = 1940:1:2000;  % Create a range of x values for prediction
y_income_fit = polyval(p_income, x_income_fit);

disp("income")
disp(p_income);

plot(x_income, y_income, 'o', x_income_fit, y_income_fit);

xlabel('Year');
ylabel('Median housing cost');
legend('Housing Cost Data', 'Fitted Cost', 'Income Data', 'Fitted Income');

figure(2)

x_cost_future = 2020:1:2030;  % Create a range of x values for prediction
y_cost_future = polyval(p_cost, x_cost_future);

x_income_future = 2020:1:2030;  % Create a range of x values for prediction
y_income_future = polyval(p_income, x_income_future);

plot(x_cost_future, y_cost_future);
hold on
plot(x_income_future, y_income_future);

xlabel('Year');
ylabel('Money');
legend( 'Fitted Cost',  'Fitted Income');
