# Programa em código Python que verifica se um número digitado pelo usuário é negativo, zero ou positivo.

numero = int(input('Informe um número qualquer: '))

if numero < 0:
    print ('Este número é negativo!')
elif numero == 0:
    print ('Este número é zero!')
else:
    print ('Este número é positivo!')
print ('FIM')
