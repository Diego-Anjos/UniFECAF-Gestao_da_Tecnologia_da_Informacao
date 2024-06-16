# Código que permite ao usuário decidir se quer continuar vendo a mensagem "Game over!" repetidamente ao digitar 'S'.

# Quando o usuário decide não continuar, o programa termina com a mensagem "FIM DE JOGO!".

cont = 'S'
while cont == 'S':
    print ('Game over!')
    cont = str(input('Deseja continuar, digite <S>? '))
print ('FIM DE JOGO!')
