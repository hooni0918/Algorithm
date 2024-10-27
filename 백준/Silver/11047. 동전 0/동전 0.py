n, k = map(int, input().split())
coins = []

# 동전 가치 입력받기
for _ in range(n):
    num = int(input())
    coins.append(num)

count = 0  # 동전 개수를 저장할 변수
coins.sort(reverse=True)  # 큰 동전부터 사용하기 위해 내림차순 정렬

# 각 동전에 대해
for coin in coins:
    if k >= coin:  # 현재 동전을 사용할 수 있다면
        count += k // coin  # 동전 개수 추가
        k %= coin  # 남은 금액 갱신

print(count)