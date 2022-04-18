# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.


testa_writexl_instalado <- function() {
   
   # Testa evitando dar erro para o usuário
   try({
      pacotes <- installed.packages()[,1] 
      correto <- is.element("writexl", pacotes)
   }, silent = TRUE)
   
   # Esse valor é retornado como resposta ao teste
   exists('correto') && isTRUE(correto)
}


testa_writexl_carregado <- function() {
   
   # Testa evitando dar erro para o usuário
   try({
      correto <- is.element("writexl", (.packages()))
   }, silent = TRUE)
   
   # Esse valor é retornado como resposta ao teste
   exists('correto') && isTRUE(correto)
}

