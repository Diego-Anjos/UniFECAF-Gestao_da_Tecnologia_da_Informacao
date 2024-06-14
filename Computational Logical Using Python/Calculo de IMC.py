# Exercício em PYTHON.
# Cadastro de uma academia.
# Cod / Nome / Peso / Altura / IMC
# Processamento
# IMC = peso / (altura * altura²);

cod = int (input ('Digite o código: '))
nome = str(input('Informe seu nome aqui: '))
peso = float(input('Seu peso: '))
altura = float(input('Sua altura: '))
imc = peso / (altura ** 2)

print ('FICHA DO USUÁRIO!')
print ('Seu nome informado é: ', nome, 'E seu código inserido: ', cod)
print ('Peso (KG): ', peso)
print ('Altura (m): ', altura)
print ('IMC:', round(imc,2))
