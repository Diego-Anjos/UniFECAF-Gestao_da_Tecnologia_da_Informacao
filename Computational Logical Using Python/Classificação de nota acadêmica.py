# Código Python solicita ao usuário que digite uma nota e em seguida determina a faixa de classificação da nota, emitindo uma mensagem correspondente.

nota = float(input('Digite sua primeira nota: '))

if nota <0:
    print('Nota Inválida.')
elif nota > 10:
    print ('Nota inválida. ')
elif nota  >=0 and nota  <= 2.0:
    print ('Nota "E". ')
elif nota  >=2 and nota <= 5.0:
    print ('Nota "D". ')
elif nota  >=5 and nota <= 7.0:
    print ('Nota "C". ')
elif nota  >=7 and nota  <= 9.0:
    print ('Nota "B". ')
elif nota >= 9 and nota <= 10.0:
    print ('Nota "A". ')
else:
    print ('Nota inválida.')
print ('FIM DO PROGRAMA.')
