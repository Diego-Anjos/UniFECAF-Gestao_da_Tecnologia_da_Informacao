# 3) Faça um algoritmo que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a idade dessa pessoa expressa apenas em dias. 
# Considerar ano com 365 dias e mês com 30 dias.

idade = int(input('Informe sua idade: '))
meses = int(input('Informe sua idade em meses: '))
dias = int(input('Informe sua idade em dias: '))

total = (idade * 365) + (meses * 30)

print('Sua idade em dias é:', total)
