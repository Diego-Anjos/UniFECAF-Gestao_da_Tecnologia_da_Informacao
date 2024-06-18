# TRABALHO DE PYTHON
# PROJETO EM GRUPO
# MEMBROS: Diego, Eduardo, Erick, Gustavo e Pedro.
# UniFECAF

# Desafio 02 - Algoritmo para validar um CPF. O CPF é formado por 11 dígitos numéricos. A verificação do CPF acontece utilizando os 9 primeiros dígitos e, 
# com um cálculo simples,verificando se o resultado corresponde aos dois últimos dígitos (depois do sinal “-“).

# Entrada do CPF.

cpf = str(input('Informe seu CPF: '));

# Coleta dos dígitos do CPF.

d1 = int (cpf[0])
d2 = int (cpf[1])
d3 = int (cpf[2])
d4 = int (cpf[3])
d5 = int (cpf[4])
d6 = int (cpf[5])
d7 = int (cpf[6])
d8 = int (cpf[7])
d9 = int (cpf[8])
d10 = int (cpf[9]) # Variavel do primeiro digito verificador
d11 = int (cpf[10]) # Variavel do segundo digito verificador

#Cálculo do primeiro dígito verificador.

calculo1 = d1*10+d2*9+d3*8+d4*7+d5*6+d6*5+d7*4+d8*3+d9*2
calculo2 = (calculo1 * 10) %11

if calculo2 == 10:
    calculo2 = 0

# Cálculo do segundo dígito verificador.

calculo3 = d1*11+d2*10+d3*9+d4*8+d5*7+d6*6+d7*5+d8*4+d9*3+d10*2
calculo4 = (calculo3 * 10) % 11

if calculo4 == 10:
    calculo4 = 0 

if calculo2 == d10 and calculo4 == d11: # Validação do CPF.
    print ('O CPF informado pelo usuário é válido! ') # Se tiver tudo certo e o formato de digitos do CPF é correto, o mesmo é válido.
else:
    print ('CPF não válido!') # Se não, inválido.

# Impressão dos dados na tela.

print ('Penúltimo dígito: ', calculo2)
print ('Último dígito: ', calculo4)
