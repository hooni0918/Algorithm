n = int(input())
t = list(map(int, input().split()))  # 한 줄로 입력받기

t.sort()

total = 0
sum = 0

for i in range(n):
    sum += t[i]
    total += sum

print(total)