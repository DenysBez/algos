import math

def fourier_transform(data): 
    
    N = len(data)
    frequencies = {}

    freq = 0;
    while (freq < N):
        re = 0
        im = 0
        
        t = 0
        while (t < N):
            rate = -1 * (2 * math.pi) * freq
            
            time = t / N
            distance = rate * time
            
            re_part = data[t] * math.cos(distance);
            im_part = data[t] * math.sin(distance);
            
            re += re_part;
            im += im_part;
            t+=1;        
        
        if (abs(re) < 1e-10): 
            re = 0
        if (abs(im) < 1e-10): 
            im = 0            
        
        re = re / N;
        im = im / N;

        frequencies[freq] = {
            "re": re,
            "im": im,
            "freq": freq,
            "amp": math.sqrt(re*re + im*im),
            "phase": math.atan2(im, re) * 180 / math.pi     #convert to degrees
        };
        freq += 1; 
    
    return frequencies;
    
