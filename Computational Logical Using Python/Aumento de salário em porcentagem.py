salario = float(input('Digite o seu salário: '))

if salario < 2000:
    aumento = salario  * 20 / 100
else:
    aumento = salario  * 10 / 100
novosalario = salario  + aumento
print ('Novo salário em reais R$ ', novosalario)
print ('FIM DO PROGRAMA')

# Este código em Python solicita o salário de um colaborador como entrada e, em seguida, calcula o novo salário com base em determinadas condições. 
# Se o salário for inferior a R$ 2000, um aumento de 20% é aplicado. Caso contrário, um aumento de 10% é aplicado. Após o cálculo, o novo salário atualizado é exibido.
