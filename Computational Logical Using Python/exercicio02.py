# 2) Calcule o raio, altura em CM de um cilindro.

raio = float(input('Digite o raio do cilindro: '))
altura = float(input('Digite a altura do cilindro '))

base = (raio + altura) * 2
lateral = (raio * altura) * 2
total = base + lateral
volume = base * altura

print ('A área da base do cilindro é:', base)
print ('A área lateral do cilindro é: ', lateral)
print ('A área total do cilindro é:', total)
print ('O volume do cilindro é: ', volume)
