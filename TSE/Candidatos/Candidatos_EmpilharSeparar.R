# ADAPTACAO PARA GERAL
# QUANDO USAR MUDAR OS DIRETORIOS E NOMES FINAIS

# define diretorio
diretorio <- setwd("C:\\Users\\8516201\\Downloads\\cand_04")

# lista arquivos do diretorio
list.files(diretorio)

getwd()

pasta.temporaria <- file.path(getwd())

# define lista arquivos como a lista dos arquivos no diretorio
lista.arquivos <- list.files(pasta.temporaria)

# cria o output em forma de dataframe
dados.output<-data.frame()

# cria o output em forma de dataframe para subset
dados.cargo<-data.frame()


# Loop - para cada i de 1 at? o tamanho da lista
for (i in 1:length(lista.arquivos)){
  
  # Gerar o caminho e nome do arquivo combinando pasta e o arquivo i
  nome.arquivo <- file.path(pasta.temporaria, lista.arquivos[i])
  
  # Extrai a extensao do arquivo (ultimos 3 caracteres do nome)
  extensao.arquivo <- substr(nome.arquivo, (nchar(nome.arquivo)-2), nchar(nome.arquivo))
  
  # Se extensao do arquivo eh igual a txt, seguir
  if (extensao.arquivo=="txt"){
    
    # Obtem as 10 primeiras linhas do arquivo (se houver)
    linhas.arquivo <- length(readLines(nome.arquivo, n=10))
    
    # Se o numero de linhas for maior que 9, seguir
    if (linhas.arquivo>9){
      
      # Abre o arquivo de dados com o nome 'dados'
      # Opcoes: separador = ; , quote = " e enconding = latin1
      # LEMBRAR DE TROCAR O VALOR DO V PARA A COLUNA QUE CONTEM O CPF
      dados <- read.table(nome.arquivo, sep=";", quote="\"",
                          fill = TRUE, #fileEncoding="latin1", 
                          stringsAsFactors=FALSE, colClasses=c(V27="character"))
                          #colClasses=c(V14="character",V28="character"))
            
      
      # Imprime no console o nome do arquivo
      print(paste("Arquivo", lista.arquivos[i], "aberto com sucesso!"))
      
      # Acrescente os dados ao data frame dados.output (empilhar) 
      dados.output <- rbind(dados.output, dados)        
      
      # Imprime no console o nome do arquivo
      print(paste("Arquivo", lista.arquivos[i], "empilhado!!"))
      

    }
  } 
}


# dar nomes as colunas - Candidatos Ate 2010
names(dados.output) <- c("DATA_GERACAO",
                         "HORA_GERACAO",
                         "ANO_ELEICAO",
                         "NUM_TURNO",
                         "DESCRICAO_ELEICAO",
                         "SIGLA_UF",
                         "SIGLA_UE",
                         "DESCRICAO_UE",
                         "CODIGO_CARGO",
                         "DESC_CARGO",
                         "NOME_CANDIDATO",
                         "SEQUENCIAL_CANDIDATO",
                         "NUMERO_CANDIDATO",
                         "NOME_URNA_CANDIDATO",
                         "COD_SITUACAO_CANDIDATURA",
                         "DES_SITUACAO_CANDIDATURA",
                         "NUMERO_PARTIDO",
                         "SIGLA_PARTIDO",
                         "NOME_PARTIDO",
                         "CODIGO_LEGENDA",
                         "SIGLA_LEGENDA",
                         "COMPOSICAO_LEGENDA",
                         "NOME_LEGENDA",
                         "CODIGO_OCUPACAO",
                         "DESCRICAO_OCUPACAO",
                         "DATA_NASCIMENTO",
                         "NUM_TITULO_ELEITORAL_CANDIDATO",
                         "IDADE_DATA_ELEICAO",
                         "CODIGO_SEXO",
                         "DESCRICAO_SEXO",
                         "COD_GRAU_INSTRUCAO",
                         "DESCRICAO_GRAU_INSTRUCAO",
                         "CODIGO_ESTADO_CIVIL",
                         "DESCRICAO_ESTADO_CIVIL",
                         "CODIGO_NACIONALIDADE",
                         "DESCRICAO_NACIONALIDADE",
                         "SIGLA_UF_NASCIMENTO",
                         "CODIGO_MUNICIPIO_NASCIMENTO",
                         "NOME_MUNICIPIO_NASCIMENTO",
                         "DESPESA_MAX_CAMPANHA",
                         "COD_SIT_TOT_TURNO",
                         "DESC_SIT_TOT_TURNO")


# dar nomes as colunas - Candidatos 2012
names(dados.output) <- c("DATA_GERACAO",
                         "HORA_GERACAO",
                         "ANO_ELEICAO",
                         "NUM_TURNO",
                         "DESCRICAO_ELEICAO",
                         "SIGLA_UF",
                         "SIGLA_UE",
                         "DESCRICAO_UE",
                         "CODIGO_CARGO",
                         "DESC_CARGO",
                         "NOME_CANDIDATO",
                         "SEQUENCIAL_CANDIDATO",
                         "NUMERO_CANDIDATO",
                         "CPF_CAND",
                         "NOME_URNA_CANDIDATO",
                         "COD_SITUACAO_CANDIDATURA",
                         "DES_SITUACAO_CANDIDATURA",
                         "NUMERO_PARTIDO",
                         "SIGLA_PARTIDO",
                         "NOME_PARTIDO",
                         "CODIGO_LEGENDA",
                         "SIGLA_LEGENDA",
                         "COMPOSICAO_LEGENDA",
                         "NOME_LEGENDA",
                         "CODIGO_OCUPACAO",
                         "DESCRICAO_OCUPACAO",
                         "DATA_NASCIMENTO",
                         "NUM_TITULO_ELEITORAL_CANDIDATO",
                         "IDADE_DATA_ELEICAO",
                         "CODIGO_SEXO",
                         "DESCRICAO_SEXO",
                         "COD_GRAU_INSTRUCAO",
                         "DESCRICAO_GRAU_INSTRUCAO",
                         "CODIGO_ESTADO_CIVIL",
                         "DESCRICAO_ESTADO_CIVIL",
                         "CODIGO_NACIONALIDADE",
                         "DESCRICAO_NACIONALIDADE",
                         "SIGLA_UF_NASCIMENTO",
                         "CODIGO_MUNICIPIO_NASCIMENTO",
                         "NOME_MUNICIPIO_NASCIMENTO",
                         "DESPESA_MAX_CAMPANHA",
                         "COD_SIT_TOT_TURNO",
                         "DESC_SIT_TOT_TURNO")



# dar nomes as colunas - Candidatos 2014
names(dados.output) <- c("DATA_GERACAO",
                         "HORA_GERACAO",
                         "ANO_ELEICAO",
                         "NUM_TURNO",
                         "DESCRICAO_ELEICAO",
                         "SIGLA_UF",
                         "SIGLA_UE",
                         "DESCRICAO_UE",
                         "CODIGO_CARGO",
                         "DESC_CARGO",
                         "NOME_CANDIDATO",
                         "SEQUENCIAL_CANDIDATO",
                         "NUMERO_CANDIDATO",
                         "CPF_CAND",
                         "NOME_URNA_CANDIDATO",
                         "COD_SITUACAO_CANDIDATURA",
                         "DES_SITUACAO_CANDIDATURA",
                         "NUMERO_PARTIDO",
                         "SIGLA_PARTIDO",
                         "NOME_PARTIDO",
                         "CODIGO_LEGENDA",
                         "SIGLA_LEGENDA",
                         "COMPOSICAO_LEGENDA",
                         "NOME_LEGENDA",
                         "CODIGO_OCUPACAO",
                         "DESCRICAO_OCUPACAO",
                         "DATA_NASCIMENTO",
                         "NUM_TITULO_ELEITORAL_CANDIDATO",
                         "IDADE_DATA_ELEICAO",
                         "CODIGO_SEXO",
                         "DESCRICAO_SEXO",
                         "COD_GRAU_INSTRUCAO",
                         "DESCRICAO_GRAU_INSTRUCAO",
                         "CODIGO_ESTADO_CIVIL",
                         "DESCRICAO_ESTADO_CIVIL",
                         "COD_COR_RACA",
                         "DESC_COR_RACA",
                         "CODIGO_NACIONALIDADE",
                         "DESCRICAO_NACIONALIDADE",
                         "SIGLA_UF_NASCIMENTO",
                         "CODIGO_MUNICIPIO_NASCIMENTO",
                         "NOME_MUNICIPIO_NASCIMENTO",
                         "DESPESA_MAX_CAMPANHA",
                         "COD_SIT_TOT_TURNO",
                         "DESC_SIT_TOT_TURNO")

nome.arquivo <- ("Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2012_Candidatos.txt")

dados <- read.table(nome.arquivo, sep=";", quote="\"",
                    fill = TRUE, fileEncoding="latin1", header = T,
                    stringsAsFactors=FALSE,
                    colClasses=c(NUM_TITULO_ELEITORAL_CANDIDATO="character", CPF_CAND="character"))


# escolher linhas especificas (por uma caracteristica em comum)
# distingue maiusculas de minusculas em strings
dados.cargoP <- subset (dados, DESC_CARGO=="PRESIDENTE")

dados.cargoG <- subset (dados, DESC_CARGO=="GOVERNADOR")

dados.cargoS <- subset (dados, DESC_CARGO=="SENADOR")

dados.cargoE <- subset (dados, DESC_CARGO=="DEPUTADO ESTADUAL")

dados.cargoD <- subset (dados, DESC_CARGO=="DEPUTADO DISTRITAL")

dados.cargoF <- subset (dados, DESC_CARGO=="DEPUTADO FEDERAL")
?subset
# salvar em arquivo txt
write.table(dados.output, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2008_Candidatos.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

#MUNICIPAIS

dados.cargoPref <- subset (dados.output, DESC_CARGO=="PREFEITO")

dados.cargoV <- subset (dados.output, DESC_CARGO=="VEREADOR")

write.table(dados.cargoPref, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2008_Candidatos_Pref.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

write.table(dados.cargoV, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2008_Candidatos_Ver.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

#GERAIS
# salvar em arquivo txt
write.table(dados.cargoD, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2012_Candidatos_DepDis.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

write.table(dados.cargoE, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2012_Candidatos_DepEst.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

write.table(dados.cargoF, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2012_Candidatos_DepFed.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

write.table(dados.cargoG, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2014_Candidatos_Gov.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

write.table(dados.cargoP, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2014_Candidatos_Pre.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

write.table(dados.cargoS, "Y:\\ELEITORAL\\Candidatos\\Candidatos com titulo de eleitor\\Com titulo como variavel texto\\2014_Candidatos_Sen.txt",
            sep = ";",
            quote = T,
            dec = ",",
            row.names = F,
            col.names = T)
print ("tarefa completada!")

