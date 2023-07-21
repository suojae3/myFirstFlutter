


import sys
import random

print('1부터 n까지 정수의 합 구하기')
n = int(input('n값을 입력하세요'))


sum = 0 
i = 1

while i <= n:
    sum += i
    i += 1
    
print(f'1부터 {n}까지 정수의 합은 {sum}입니다')

print('=' * 20)


print('a부터 b까지 정수의 합을 구합니다')
a = int(input)