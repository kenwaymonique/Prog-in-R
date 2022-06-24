dados = read.csv2(file = "C:/Users/moniq/OneDrive/Área de Trabalho/candidatos.csv", header = FALSE)
candidatos = c(0,0,0,0,0)

repeat{
  print("Bem-vindo à Urna, para votar, informe o solicitado")
  print("Suas opcoes de candidatos sao:")
  print(dados)
  print("Voce tambem pode optar pelo voto nulo (digite 99)")
  print("Voce tambem pode optar pelo voto branco (digite 0)")
  print("Informe seu voto:")

  names(candidatos) = c("fulano", "ciclano", "beltrano", "nulo", "branco")
  a = readline(prompt = "Qual será seu voto? ")
  m = candidatos[1] 
  n = candidatos[2]
  o = candidatos[3]
  p = candidatos[4]
  q = candidatos[5]
  
  if(a == 1){
    print("Confimar voto em Fulano")
    print("Se sim, digite 5, caso nao, digite 6")
    z = scan(what = numeric(), nmax = 1)
    if(z == 5){
    candidatos[1] = m + 1
    }
  }
  if(a == 2){
    print("Confirmar seu voto em Ciclano")
    print("Se sim, digite 5, caso nao, digite 6")
    z = scan(what = numeric(), nmax = 1)
    if(z == 5){
    candidatos[2] = n + 1
    }  
  }
  if(a == 3){
    print("Confirmar seu voto em Beltrano")
    print("Se sim, digite 5, caso nao, digite 6")
    z = scan(what = numeric(), nmax = 1)
    if(z == 5){
    candidatos[3] = o + 1
    }
  }
  if(a == 99){
    print("Confirmar voto nulo")
    print("Se sim, digite 5, caso nao, digite 6")
    z = scan(what = numeric(), nmax = 1)
    if(z == 5){
    candidatos[4] = p + 1
    }
  }
  if(a == 0){
    print("Confirmar voto branco")
    print("Se sim, digite 5, caso nao, digite 6")
    z = scan(what = numeric(), nmax = 1)
    if(z == 5){
    candidatos[5] = q + 1
    }
  }
  print("Caso deseje votar novamente, digite 4, caso deseje finalizar digite -1")
  b = scan(what = numeric(), nmax = 1)
  if(b == -1) break()
  }

print("Obrigada por votar!")
print("Aqui estao seus dados")

print(candidatos)

total = candidatos[1] + candidatos[2] + candidatos[3] + candidatos[4] + candidatos[5]
op1 = (candidatos[1]/total)*100 
print(paste0('Fulano recebeu ',op1,'% dos votos'))
op2 = (candidatos[2]/total)*100
print(paste0('Ciclano recebeu ',op2,'% dos votos'))
op3 = (candidatos[3]/total)*100
print(paste0('Beltrano recebeu ',op3,'% dos votos'))
op4 = (candidatos[4]/total)*100
print(paste0('A porcentagem de votos nulos foi ',op4,'%'))
op5 = (candidatos[5]/total)*100
print(paste0('A porcentagem de votos brancos foi ',op5,'%'))
write.table(candidatos, file = "dados.csv", sep = ",")

