
def back():
    n = int(input())
    a = list(map(int, input().split()))
    b = list(map(int, input().split()))

    a.sort()
    B_sorted_indices = sorted(range(n), key=lambda x: b[x], reverse=True)

    result = 0

    for i in range(n):
        result += a[i] * b[B_sorted_indices[i]]
    return result

print(back())