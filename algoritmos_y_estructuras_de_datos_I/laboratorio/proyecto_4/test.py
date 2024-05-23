def division(x: int, y: int) -> dict:
    if y < 0:
        raise ZeroDivisionError
    
    q = 0
    while(x >= y):
        x = x - y
        q += 1
    
    return {"resto": x, "cociente": q}

print(division(5,10))
print(division(2,10))
print(division(10,2))
print(division(10,5))
print(division(15,5))
print(division(20,5))
print(division(21,5))