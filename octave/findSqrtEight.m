# Find sqrt of 8 with given error tolerance using bisection method
#Usage example: 
#>> findSqrtEight(0.000000000005);
#   Output: 2.8284271247
function findSqrtEight(errorTolerance)  
  printf ("%.10f\n", bisectionMethodSqrt(2, 4, errorTolerance));
endfunction

function result = bisectionMethodSqrt(firstFactor, secondFactor, errorTolerance)
  initNumber = firstFactor * secondFactor;
  leftFactor = firstFactor;
  rightFactor = secondFactor;
  while(abs(leftFactor - rightFactor) > errorTolerance)
    numAvg = (leftFactor + rightFactor) / 2;  
    initNumberByAvg = initNumber / numAvg;

    if(initNumberByAvg < numAvg)
      rightFactor = numAvg;
    elseif(initNumberByAvg > numAvg)
      leftFactor = numAvg;
    else
      break;
    endif
  endwhile
  result = leftFactor;
endfunction
