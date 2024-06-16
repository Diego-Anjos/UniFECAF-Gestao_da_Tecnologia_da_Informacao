# Programa utilizando comando While, que realiza uma pesquisa de votação onde os participantes podem votar em diferentes opções de comida.

cont_churrasco = 0
cont_comida_japonesa = 0
cont_pizza = 0
cont_outros = 0

contador = 0

while contador < 20:
    contador = contador + 1
    
    print ('Entre com seu voto: 1-CHURRASCO / 2-COMIDA JAPONESA / 3-PIZZA / 4-OUTROS.')
    
    voto = int(input('Seu voto: '))
    
    if voto == 1:
        print ('Você votou em Churrasco.')
        cont_churrasco = cont_churrasco + 1
    
    elif voto == 2:
        print ('Você votou em Comida Japonesa.')
        cont_comida_japonesa = cont_comida_japonesa + 1
    
    elif voto == 3:
        print ('Você votou em Pizza.')
        cont_pizza = cont_pizza + 1
    
    else:
        print ('Você votou em Outros.')
        cont_outros = cont_outros + 1
    
print ('Total da pesquisa')
print ('Churrasco = ', cont_churrasco)
print ('Comida Japonesa = ', cont_comida_japonesa)
print ('Pizza = ', cont_pizza)
print ('Outros = ', cont_outros)
print ('FIM DO PROGRAMA.')
