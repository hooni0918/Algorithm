def calculate_sugar_bags(N):
    # 5킬로그램 봉지를 최대한 많이 사용하는 것부터 시작
    for five_bags in range(N // 5, -1, -1):
        # 5kg 봉지로 처리하고 남은 무게
        remaining = N - (5 * five_bags)
        
        # 남은 무게가 3kg 봉지로 정확히 나누어 떨어지는지 확인
        if remaining % 3 == 0:
            three_bags = remaining // 3
            return five_bags + three_bags
    
    # 정확한 무게를 만들 수 없는 경우
    return -1

# 입력 받기
N = int(input())
result = calculate_sugar_bags(N)
print(result)