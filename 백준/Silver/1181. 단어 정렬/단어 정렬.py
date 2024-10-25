n = int(input())

wordSort = []
for i in range(n):
    words = input()
    wordSort.append(words)

wordSort = list(set(wordSort))
wordSort.sort(key=lambda x: (len(x), x))

for i in wordSort:
    print(i)
