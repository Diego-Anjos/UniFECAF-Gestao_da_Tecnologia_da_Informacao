# TRABALHO DE PYTHON
# PROJETO EM GRUPO
# MEMBROS: Diego, Eduardo, Erick, Gustavo e Pedro.
# UniFECAF

# Desafio 01 - Faça um algoritmo para o cálculo de uma folha de pagamento, sabendo que os descontos são do Imposto de Renda, que depende do salário bruto 
# (conforme tabela abaixo), 10% para o INSS e que o FGTS corresponde a 11% do Salário Bruto, mas não é descontado (é a empresa que deposita).
# O Salário Líquido corresponde ao Salário Bruto menos os descontos. O algoritmo deverá pedir ao usuário o valor da sua hora e a quantidade de horas trabalhadas no mês.

# ITENS:
#Desconto do IR:
#Salário Bruto até 900 (inclusive) - isento
#Salário Bruto até 1500 (inclusive) - desconto de 5%
#Salário Bruto até 2500 (inclusive) - desconto de 10%
#Salário Bruto acima de 2500 - desconto de 20%

# Solicita ao usuário o valor da hora e a quantidade de horas trabalhadas no mês.

valor_hora = float(input("Digite o valor da sua hora de trabalho: "))
horas_trabalhadas = float(input("Digite a quantidade de horas trabalhadas no mês: "))

# Calcula o salário bruto.

salario_bruto = valor_hora * horas_trabalhadas

# Calcula o desconto do INSS.

inss = salario_bruto * 0.1

# Calcula o desconto do FGTS.

fgts = salario_bruto * 0.11

# Cálculo do Imposto de Renda (IR).

if salario_bruto <= 900:
    ir_percentual = 0
elif salario_bruto <= 1500:
    ir_percentual = 0.05
elif salario_bruto <= 2500:
    ir_percentual = 0.1
else:
    ir_percentual = 0.2

# Calcula o valor do IR.

ir = salario_bruto * ir_percentual

# Calcula o salário líquido.

salario_liquido = salario_bruto - ir - inss

# Imprime na tela as informações da folha de pagamento com todos os dados e valores.

print("Salário Bruto:", "(", valor_hora, "*", horas_trabalhadas, "): R$", salario_bruto)
print("(-) IR (", ir_percentual*100, "%) : R$", ir)
print("(-) INSS (10%) : R$", inss)
print("FGTS (11%) : R$", fgts)
print("Total de descontos : R$", ir + inss)
print("Salário Liquido : R$", salario_liquido)
