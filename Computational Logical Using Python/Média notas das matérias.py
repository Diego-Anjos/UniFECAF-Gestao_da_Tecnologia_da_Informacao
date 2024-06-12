ra = int(input('RA: '))
nome = str(input('Nome: '))
nota1 = float(input('Nota da materia1: '))
nota2 = float(input('Nota da materia2: '))

media = (nota1 + nota2) / 2

if media >= 6:
    print ('Aluno aprovado!')
    print ('RA do aluno:', ra)
    print ('Nome do Aluno: ', nome)
    print ('Média = ', round(media,2))
else:
    print ('Aluno reprovado! ')
    print ('RA do aluno:', ra)
    print ('Nome do Aluno: ', nome)
    print ('Média = ', round(media,2))
print ('FIM DO PROGRAMA')

# Programa escrito em Python, que realiza o calculo da média das notas de um aluno com base em duas matérias e determina se ele foi aprovado ou reprovado de acordo com um critério de aprovação (média maior ou igual a 6).

# O programa solicita os seguintes dados: Registro Acadêmico (RA), Nome do aluno e as notas das duas matérias.

# A média das notas é calculada pela soma das duas notas dividida por 2. Se o resultado for maior ou igual a 6, o aluno é considerado aprovado.

# Se a média for menor que 6, o aluno é considerado reprovado.
