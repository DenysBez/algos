function findSqrtEigth(errorTolerance)
  secantSqrtEight(errorTolerance);
endfunction

# Find sqrt of 8 with given error tolerance using bisection method
#Usage example: 
#>> bisectionSqrtEight(0.000000000005)
# 0 | 2.0000000000 | 4.0000000000 | 2.0000000000;
#   Tabular Output interpretation
# first column - iteration number
# second column - left endpoint
# third column - right endpoint
# fourth column - error size
function bisectionSqrtEight(errorTolerance)
  initNumber = 8;
  leftEndpoint = 2;
  rightEndpoint = 4;
  
  iteration = 0;
  while(abs(leftEndpoint - rightEndpoint) > errorTolerance)    
    numAvg = (leftEndpoint + rightEndpoint) / 2;  
    initNumberByAvg = initNumber / numAvg;

    printf('%i | %.30f | %.30f | %.30f \n', iteration, leftEndpoint, rightEndpoint, abs(leftEndpoint - rightEndpoint));
    
    iteration += 1;
    
    if(initNumberByAvg < numAvg)
      rightEndpoint = numAvg;
    elseif(initNumberByAvg > numAvg)
      leftEndpoint = numAvg;
    else
      break;
    endif
  endwhile
endfunction


#a rough plot suggests that there is a x-intersection betwen 2 and 3
function secantSqrtEight(errorTolerance)
  a = 2;
  b = 3;
  fa = a**2 - 8;
  fb = b**2 - 8; 

  for iter = 2:20
      printf('%i | %.30f | %.30f | %.30f \n', iter, a, b, abs(a - b));
      if(abs(fa) > abs(fb))
        t = a;
        a = b;
        b = t;
        
        t = fa;
        fa = fb;
        fb = t;
      elseif(fa == fb)
        break;
      endif
      
      invsec = (b - a) / (fb - fa);
      b = a;
      fb = fa;
      
      a = a - fa * invsec;
      fa = a**2 - 8;
  endfor  
  
endfunction



function newtoneSqrtEight(errorTolerance)
  

endfunction
