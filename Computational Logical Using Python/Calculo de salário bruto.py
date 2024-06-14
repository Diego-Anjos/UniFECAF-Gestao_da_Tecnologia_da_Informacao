# EXERCÍCIO;
# Cadastro de um colaborador
# Parte de entrada: Crachá - Nome - Cargo - Horas trabalhadas - Valor: Hora;
# SALÁRIO BRUTO = HORAS TRABALHADAS * VALOR HORA
# Programa que calcula o salário bruto

cracha = int(input('Informe seu número do cartão: '))
nome = str(input('Digite seu nome: '))
cargo = str(input('Cargo de ocupação: '))
horas_t = float(input('Horas de trabalho: '))
valor_h = float(input('Valor que recebe por hora: '))

salario_bruto = horas_t * valor_h

print ('Número do crachá: ', cracha)
print ('Nome do funcionário: ', nome)
print ('Cargo do funcionario: ', cargo)
print ('Horas trabalhas: ', horas_t)
print ('Valor que recebe por horas: ', valor_h)
print ('Salario bruto total R$: ', salario_bruto)
