T = int(input())

# 버튼 A, B, C는 각각 5분(300초), 1분(60초), 10초
A, B, C = 300, 60, 10

# 불가능한 경우 체크 (10으로 나누어 떨어지지 않으면 불가능)
if T % 10 != 0:
    print(-1)
else:
    # 큰 단위부터 차례로 나누기
    count_A = T // A
    T %= A
    
    count_B = T // B
    T %= B
    
    count_C = T // C
    
    print(count_A, count_B, count_C)