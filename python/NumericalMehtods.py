from math import *
from time import *



def funcFindDerivative(x, y):
	return  (1+3*x**2)/(3*y+6);

def funcSolution(x) :
    return sqrt((2*x**3)/3 + (2*x)/3+ 9) - 2;

def eulerStandard(func, stepSize, numOfSteps, x0, y0):
    prevX = x0;
    prevY = y0;
    error = abs(funcSolution(prevX) - y0);
    
    for stepNum in range(1, numOfSteps):         
        print ('x value is: ' + repr(round(prevX, 6)) + ' and y value is ' + repr(round(prevY, 6)) + ' and global trunc error  is ' + repr(error));
        x = stepNum * stepSize;      
        y = prevY + stepSize * func(prevX, prevY);
        
        prevX = x;
        prevY = y;
        
        error = abs(funcSolution(prevX) - prevY);
    return;
    
def eulerBackward(func, stepSize, numOfSteps, x0, y0):
    prevX = x0;
    prevY = y0;
    error = abs(funcSolution(prevX) - y0);
    
    for stepNum in range(1, numOfSteps):         
        print ('x value is: ' + repr(round(prevX, 6)) + ' and y value is ' + repr(round(prevY, 6)) + ' and global trunc error  is ' + repr(error));
        x = stepNum * stepSize;               
        ynew = prevY + stepSize * func(prevX, prevY);
        y = prevY + stepSize * func(x, ynew);
        prevX = x;
        prevY = y;
        error = abs(funcSolution(prevX) - prevY);
    return;

def rungeKuttaFourth(func, stepSize, numOfSteps, x0, y0):
    prevX = x0;
    prevY = y0;    
    
    localError   = 0;
    globalError = abs(funcSolution(prevX) - y0);    
    for stepNum in range(1, numOfSteps):
        print ('x value is: ' + repr(round(prevX, 6)) + ' and y value is ' + repr(round(prevY, 6)) + ' and global trunc error  is ' + repr(globalError);
        
        w1 = stepSize * func(prevX, prevY);
        w2 = stepSize * func(prevX + (1/2) * stepSize, prevY + (1/2) * w1); 
        w3 = stepSize * func(prevX + (1/2) * stepSize, prevY + (1/2) * w2);
        w4 = stepSize * func(prevX + stepSize, prevY + w3);    
        
        prevX = stepNum * stepSize;
        prevY = prevY + 1/6 * (w1 + 2 * w2 + 2 * w3 + w4);
        
        globalError = abs(funcSolution(prevX) - prevY);
    return;
    
    

print ('Euler Standard (Forward)  with step size: 0.1');
start = time();
eulerStandard(funcFindDerivative, 0.1, 20, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));


print ('Euler Standard (Forward)  with step size: 0.01');
start = time();
eulerStandard(funcFindDerivative, 0.01, 20, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Euler Standard (Forward)  with step size: 0.001');
start = time();
eulerStandard(funcFindDerivative, 0.001, 20, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Euler Backward  with step size: 0.1');
start = time();
eulerBackward(funcFindDerivative, 0.1, 20, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Euler Backward  with step size: 0.01');
start = time();
eulerBackward(funcFindDerivative, 0.01, 20, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Euler Backward  with step size: 0.001');
start = time();
eulerBackward(funcFindDerivative, 0.001, 20, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Runge Kutta Fourth  with step size: 0.1');
start = time();
rungeKuttaFourth(funcFindDerivative, 0.1, 10, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Runge Kutta Fourth  with step size: 0.01');
start = time();
rungeKuttaFourth(funcFindDerivative, 0.01, 10, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));

print ('Runge Kutta Fourth  with step size: 0.001');
start = time();
rungeKuttaFourth(funcFindDerivative, 0.001, 10, 0, 1);
end = time();
print('Time to execute: ' + repr(end - start));
