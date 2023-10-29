*** Settings ***
Library           SeleniumLibrary
Resource          ./shared/setup.robot
Resource          ./pages/todolist.robot

*** Test Cases ***
Acessando o Site - (Gerenciador de Tarefas)
    Acessando o Site - (Gerenciador de Tarefas)
Adição de Tarefas
    Adição de Tarefas
#Marcação de Tarefas Concluídas