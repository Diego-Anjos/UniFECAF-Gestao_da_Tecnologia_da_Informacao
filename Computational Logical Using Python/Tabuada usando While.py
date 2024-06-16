# Código em Python utilizando a estrutura de repetição While, para exibir a tabuada de um número digitado pelo usuário.

numero = int(input('Digite um número inteiro: '))
cont = 1

while cont <= 10:
    print (numero,' X ', cont, ' = ', numero * cont)
    cont = cont + 1
print ('FIM DO PROGRAMA.')
