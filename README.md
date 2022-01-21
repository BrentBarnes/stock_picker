# stock_picker

Assignment:
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

Instead of comparing profits throughout the iteration, I instead opted to collect nested arrays of lows and highs: 
[[low_price, high_price], [low_price, high_price]]. 
Then the program calculates the profit of each pair and returns the pair with the highest amount of profit.