*** Settings ***
Library           SeleniumLibrary
Resource          ./shared/setup.robot
Resource          ./pages/todolist.robot

*** Test Cases ***
Acessando o Site - (Gerenciador de Tarefas)
    Acessando o Site - (Gerenciador de Tarefas)
Adição de Tarefas - 01
    Adição de Tarefas
Contagem de tarefas pendentes
    Contagem de tarefas pendentes
Marcação de Tarefas Concluídas
    Marcação de Tarefas Concluídas
Exclusão de Tarefas
    Exclusão de Tarefas
Adição de Tarefas - 02 
    Adição de Tarefas
Limpeza da lista de tarefas
    Limpeza da lista de tarefas