def calculate_min():
    # 입력 받기
    expression = input()
    
    # '-'를 기준으로 식을 분리
    parts = expression.split('-')
    
    # 첫 번째 부분은 더하기만 계산
    result = sum(map(int, parts[0].split('+')))
    
    # 나머지 부분들은 모두 빼기
    for part in parts[1:]:
        # 각 부분에서 덧셈을 먼저 계산
        result -= sum(map(int, part.split('+')))
    
    return result

# 결과 출력
print(calculate_min())