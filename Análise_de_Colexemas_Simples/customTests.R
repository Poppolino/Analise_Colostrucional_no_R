# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      #AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.

caminho_swirl <- function(){
   tryCatch(swirl:::swirl_courses_dir(),
            error = function(c) {file.path(find.package("swirl"),"Courses")}
   )
}



testa_pacote_instalado <- function(nome_pacote) {
   
   # Testa evitando dar erro para o usuário
   try({
      pacotes <- installed.packages()[,1] 
      correto <- is.element(nome_pacote, pacotes)
   }, silent = TRUE)
   
   # Esse valor é retornado como resposta ao teste
   exists('correto') && isTRUE(correto)
}



testa_igualdade_dataframes <- function(){
   # Testa evitando dar erro para o usuário
   try({
      # Usa a tabela como parâmetro de corretude 
      tabela_controle <- read_excel(file.path(caminho_swirl(), "Analise_Colostrucional_no_R", "Despedida", "dados_collex.xlsx"))
   }, silent = TRUE)
   
   exists('dados_collex') && identical(dados_collex, tabela_controle)
}

