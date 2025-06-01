Least Squares Linear Approximation
This MATLAB script performs linear regression using the least squares method for given data points (x_i, y_i). It computes coefficients c0, c1 of the line y = c1x + c0, sums for regression, differences between predicted and actual y_i, and the mean squared error (biased variance).
Project Structure

src/ - Source code:
lst_sq_apprx.m: Main MATLAB script for linear regression.


.gitignore: Excludes unnecessary files (e.g., temporary MATLAB files).
README.md: This file.

Features

Linear Regression: Calculates coefficients c0, c1 for the line y = c1x + c0 using least squares.
Sums Calculation: Computes sums s0, s1, s2, t0, t1 for regression equations.
Differences: Reports absolute differences between actual (y_i) and predicted (y_hat) values.
Mean Squared Error: Calculates MSE for each point as (y_i - y_hat)^2 / n.
Hardcoded Data: Uses 9 predefined data points for demonstration.

Requirements

MATLAB (tested with versions R2016a and later)
Symbolic Math Toolbox (for solving linear equations with solve)
No external dependencies required

Installation

Clone the repository:git clone https://github.com/your-username/least-squares-approximation.git


Navigate to the source directory:cd least-squares-approximation/src



Usage

Open MATLAB:
Launch MATLAB and set the working directory to the src/ folder.


Edit input data (optional):
Modify the data points x1 to x9 and y1 to y9 in lst_sq_apprx.m to use your own dataset.
Example:x1 = 0.03; y1 = 2.87;
x2 = 0.19; y2 = 2.44;
...
x9 = 0.87; y9 = 0.43;




Run the script:
In the MATLAB Command Window, type:lst_sq_apprx


Press Enter to execute the script.


View results:
The script outputs:
Sums: s0, s1, s2, t0, t1
Coefficients: c0, c1
Regression equation
Absolute differences for each point
Mean squared error for each point





Example Output
s0 = 9
s1 = 4.17
s2 = 2.6983
t0 = 14.48
t1 = 4.093
c0 = 3.106304985
c1 = -3.295032166
aproksymacja = -3.295032166*x + 3.106304985
Różnica y1 = 0.119250614
Różnica y2 = 0.036017178
...
Błąd średniokwadratowy 1 = 0.001582506
Błąd średniokwadratowy 2 = 0.000144123

