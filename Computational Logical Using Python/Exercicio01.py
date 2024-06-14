# 1) Um encanador precisa calcular as dimensões de uma tubulação que irá passar pela diagonal (tracejada) de um cômodo de uma casa 
#  (as medidas lado1 + lado2 da casa, em metros, serão entradas do usuário).

# Faça um programa que leia os lados de um cômodo de uma casa e calcule a diagonal (em metros) do cômodo.

lado1 = float(input ('Informe a dimensão do lado1:')) # calcula o lado 1
lado2 = float(input ('Informe a dimensão do lado2:')) # calcula o lado 2

areatracejada = (lado1 + lado2) * 2 # soma ambos os lados e multiplica pela quantidade em metros diagonal.

print ('Calculo da diagonal em Metros do cômodo é:', areatracejada) # Exibição de resultado.
