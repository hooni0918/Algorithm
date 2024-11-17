n = int(input())
for _ in range(n):
    words = input().split()
    reversed_words = [word[::-1] for word in words]
    print(' '.join(reversed_words))