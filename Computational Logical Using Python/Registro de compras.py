# Programa em Python que simula um registro de compras, onde o usuário pode inserir produtos e seus preços repetidamente até decidir finalizar.

# O código acumula o valor total da compra e conta quantos itens foram comprados pelo usuário.

cont = 'S'
item = 0
total = 0

while cont == 'S':
    nome_produto = str(input('NOME DO PRODUTO: '))
    preco_produto = float(input('PREÇO DO PRODUTO R$ '))
    item = item + 1; # Contador
    total = total + preco_produto; # Acumulador
    cont = str(input('Deseja continuar sua compra? <S>'))
print ('Valor total R$ ', total)
print ('Quantidade de itens: ', item)
print ('Agradecemos pela preferência. ')
