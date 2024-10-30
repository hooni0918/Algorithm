def calculate_change(price):
    # 1000엔에서 물건값을 뺀 거스름돈 계산
    change = 1000 - price

    # 사용 가능한 동전 단위
    coins = [500, 100, 50, 10, 5, 1]

    # 필요한 동전의 총 개수
    total_coins = 0

    # 큰 단위의 동전부터 차례로 계산
    for coin in coins:
        # 현재 동전으로 거슬러줄 수 있는 개수 계산
        num_coins = change // coin
        # 총 동전 개수에 추가
        total_coins += num_coins
        # 남은 거스름돈 계산
        change %= coin

    return total_coins


# 입력 받기
price = int(input())

# 결과 출력
print(calculate_change(price))