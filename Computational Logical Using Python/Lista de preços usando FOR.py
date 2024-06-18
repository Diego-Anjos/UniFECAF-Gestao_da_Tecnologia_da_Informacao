# Código utilizando o comando FOR em Python, tem como objetivo encontrar o maior valor da lista em Preços.

precos = [10.0, 8.90, 1.1, 5.5, 20.00, 25.00, 50.00, 12.0, 100.00]

maior = precos[0]

for valor in precos:
    if maior < valor:
        maior = valor
        print ('O valor é maior.')
    else:
        print ('Valor não é maior.')
print (maior)
