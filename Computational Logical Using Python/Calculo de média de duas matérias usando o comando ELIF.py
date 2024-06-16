# Programa que calcula a média de duas notas digitadas pelo usuário e determina o status do aluno com base nessa média.
# Utilizando os comandos ELIF em Python.

nota1 = float(input('Digite a nota 1: '))
nota2 = float(input('Digite a nota 2: '))

media = (nota1 + nota2 ) / 2

if media >=6:
    print ('Aprovado', media)
elif media >=4:
    print ('Recuperação!')
else:
    print ('Reprovado')
