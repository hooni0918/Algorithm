n = int(input())
number = []

for i in range(n):
    number.append(int(input()))

number.sort(reverse=True)
max_weight = 0

for i in range(n):
    weight = number[i] * (i+1)
    max_weight = max(max_weight , weight)

print(max_weight)
