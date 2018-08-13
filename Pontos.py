vetorPontos = []
x1 = 0
x2 = 0
y1 = 0
y2 = 0

#input()

for i in range(1,3):
    ponto = str(input("Digite a Letra do ponto : "))
    ponto = ponto.upper()
    EixoX = float(input("Digite o valor do Eixo X: "))
    EixoY = float(input("Digite o Valor do Eixo Y: "))
    #print(ponto,": (",EixoX,",",EixoY,")")
    lista = [ponto,EixoX,EixoY]
    vetorPontos.append(lista)
    #print(lista)
    #print(vetorPontos)

#----------MOSTRAR LISTA-----------------------------
print("\n\n")

for i in range (0, vetorPontos.__len__()):
    print(vetorPontos[i])


#------------PEGAR PONTOS -------------------------------
print("Escolha a letra do primeiro ponto\n")
value1 = str(input())
value1 = value1.upper()
#print(value1)
print("Escolha a letra do segundo ponto\n")
value2 = str(input())
value2 = value2.upper()

#-----------PEGAR X E Y---------------------------------------------------------
for i in range (0, vetorPontos.__len__()):
    if vetorPontos[i][0] == value1:
        x1 = vetorPontos[i][1]
        y1 = vetorPontos[i][2]



    if vetorPontos[i][0] == value2:
        x2 = vetorPontos[i][1]
        y2 = vetorPontos[i][2]



#------DISTANCIA E MEDIA------------------------------------------------------------
distancia = (((x2-x1) + (y2-y1)) ** 0.5)
print ("A distancia entre ",value1," e ",value2," é de :",'% .2f'%distancia)
mediax = ((x1+x2)/2)
mediay = ((y1+y2)/2)
print("A distancia média entre os pontos ",value1," e ",value2," é o novo ponto P(",mediax,",",mediay,")")



#-------------CALCULAR COEFICIENTE ANGULAR--------------------------

#      a =  y2-y1              Resultado para mostrar y=a(x)+b
#           _______
#           x2-x1               b = y-(a(x))

# A(x,y)

a = ((y2-y1)/(x2-x1))
b = y1-(a*x1)

print("Fórmula do ",value1," é ",a,"(x)",b)



