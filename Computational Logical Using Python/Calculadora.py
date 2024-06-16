# Código desenvolvido em Python que realiza operações matemáticas básicas entre dois números, baseado em um operador escolhido pelo usuário.

# O programa solicita que o usuário entre com o operador desejado (como '+', '-', '*', '/', '%', '^') e os dois números nos quais a operação será aplicada.

print ('Entre com os operadores: Soma + | Subtração - | Multiplicação * | Divisão / | Resto da divisão % | Potencia ^')

operador = str (input('Entre com o operador: '))
numero1 = float (input('Digite o número 1: '))
numero2 = float (input('Digite o número 2: '))

if operador == '+':
    resultado = numero1 + numero2
    print('Soma total: ', round(resultado,2))
elif operador == '-':
    resultado = numero1 - numero2
    print ('Subtração total: ', round(resultado,2))
elif operador == '*':
    resultado = numero1 * numero2
    print ('Multiplicação total: ', round(resultado,2))
elif operador == '/':
    resultado = numero1 / numero2
    print ('Divisão total: ', round(resultado,2))
elif operador == '%':
    resultado = numero1 % numero2
    print ('Resto da divisão total: ', round(resultado,2))
elif operador == '^':
        resultado = numero1 ** numero2
        print ('Potencia total: ', round(resultado,2))
else:
    print ('Operador inválido.')
print ('FIM PROGRAMA!')
