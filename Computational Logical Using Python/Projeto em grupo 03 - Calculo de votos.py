# TRABALHO DE PYTHON
# PROJETO EM GRUPO
# MEMBROS: Diego, Eduardo, Erick, Gustavo e Pedro.
# UniFECAF

# Desafio 03 - Em uma eleição presidencial existem 3 candidatos. Os votos são informados através de códigos.

# Elabore um programa que leia o código de cada voto, calcule e escreva:
# total e o % de votos para cada candidato;
# total e o % de votos nulos;
# total e o % de votos em branco;
# Como finalizador da votação, tem-se o valor 0.

# Votos dos candidatos começam em zero cada um.

votos_candidatoA = 0
votos_candidatoB = 0
votos_candidatoC = 0
votos_nulos = 0
votos_em_branco = 0
total_votos = 0

# Este trecho utiliza um loop while True para permitir que o usuário insira votos até que seja inserido o código 0, que encerra a votação.

while True:
    voto = int(input("Insira o código do candidato (OU 0(ZERO) PARA ENCERRAR VOTAÇÃO...) - (CandidatoA = 1 / CandidatoB = 2 / CandidatoC = 3 / Nulo = 4 / Branco = 5): "))
    
    if voto == 0:
        break
    if voto == 1:
        votos_candidatoA += 1
    elif voto == 2:
        votos_candidatoB += 1
    elif voto == 3:
        votos_candidatoC += 1
    elif voto == 4:
        votos_nulos += 1
    elif voto == 5:
        votos_em_branco += 1
    else:
        print("Código inválido. Insira novamente.")

    total_votos += 1

# Calcula os percentuais de votos para cada candidato e para os votos nulos e em branco.

percentual_CandidatoA = (votos_candidatoA / total_votos) * 100
percentual_candidatoB = (votos_candidatoB / total_votos) * 100
percentual_CandidatoC = (votos_candidatoC / total_votos) * 100
percentual_nulos = (votos_nulos / total_votos) * 100
percentual_em_branco = (votos_em_branco / total_votos) * 100

# Impressão de dados na tela, com os resultados.

print("\nRESULTADOS DA ELEIÇÃO")
print("-------------------------------")
print("Total de votos para Candidato A:", votos_candidatoA, "(", round(percentual_CandidatoA,2), "%)")
print("Total de votos para Candidato B:", votos_candidatoB, "(", round(percentual_candidatoB,2), "%)")
print("Total de votos para Candidato C:", votos_candidatoC, "(", round(percentual_CandidatoC,2), "%)")
print("Total de votos nulos:", votos_nulos, "(", round(percentual_nulos,2), "%)")
print("Total de votos em branco:", votos_em_branco, "(", round(percentual_em_branco,2), "%)")
print("-------------------------------")
print("Total de votos contabilizados:", total_votos)
