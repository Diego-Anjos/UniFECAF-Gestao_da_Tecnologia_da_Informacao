# TRABALHO DE PYTHON
# PROJETO EM GRUPO
# MEMBROS: Diego, Eduardo, Erick, Gustavo e Pedro.
# UniFECAF

# Desafio 04 - Escreva um programa que lê o valor de uma mercadoria e o valor pago pelo cliente. Em seguida, ele deve mostrar as notas/moedas a serem devolvidas como troco 
# (considere notas de 2, 5 reais e moedas 0.01, 0.05, 0.10, 0.25, 0,50, 1). O troco deve ser obtido sempre priorizando as notas/moedas de maior valor.

# OBS:O programa deverá mostrar o troco apenas se o mesmo existir. Se não houver troco deverá apenas exibir uma mensagem e 
# se o valor recebido for inferior ao valor da mercadoria, deverá mostrar o valor faltante.

# Entrada dos valores informados pelo User.

valor_mercadoria = float(input("Valor da mercadoria: R$ "))
valor_pago = float(input("Valor pago: R$ "))

# Calcula o troco que o cliente deve receber.

troco = valor_pago - valor_mercadoria

# Verifica o valor do troco calculado.

if troco < 0:
    print("Falta R$ ", valor_mercadoria - valor_pago)
elif troco == 0:
    print("Sem troco.")
else:
    print("Troco: R$ ", round(troco,2))
    
    # Cálculo das notas e moedas do troco.

    notas_cinco = int(troco // 5)
    if notas_cinco > 0:
        print(notas_cinco, " notas de R$ 5,00")
        troco -= notas_cinco * 5
    
    notas_dois = int(troco // 2)
    if notas_dois > 0:
        print(notas_dois, " notas de R$ 2,00")
        troco -= notas_dois * 2
    
    if troco > 0:
        if troco >= 1:
            print("1 moeda de R$ 1,00")
            troco -= 1
        if troco >= 0.5:
            print("1 moeda de R$ 0,50")
            troco -= 0.5
        if troco >= 0.25:
            print("1 moeda de R$ 0,25")
            troco -= 0.25
        if troco >= 0.1:
            print("1 moeda de R$ 0,10")
            troco -= 0.1
        if troco >= 0.05:
            print("1 moeda de R$ 0,05")
            troco -= 0.05
        if troco >= 0.01:
            print("1 moeda de R$ 0,01")
