def Schedule():

    n = int(input())
    meetings = []

    for i in range(0,n):
        a,b = map(int, input().split())
        meetings.append((a,b))

    meetings.sort(key=lambda x: (x[1], x[0]))

    total = 0
    last_time = 0

    for a,b in meetings:
        if a >= last_time:
            total += 1
            last_time = b

    return total

print(Schedule())

