n = input() 
digits = list(map(int, n))  

if 0 not in digits:
    print(-1)
else:
    if sum(digits) % 3 != 0:
        print(-1)
    else:
        digits.sort(reverse=True)
        
        result = ''.join(map(str, digits))
        print(result)