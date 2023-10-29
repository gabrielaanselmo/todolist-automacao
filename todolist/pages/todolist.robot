*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Adição de Tarefas
    FOR    ${i}    IN RANGE    5
    Input Text    css:.input-field textarea    Tarefa ${i}   # Inserindo o texto da tarefa
    Press Keys    css:.input-field textarea    ENTER   # Pressionando a tecla 'Enter' para adicionar a tarefa
    Wait Until Element Is Visible    css:li:last-child   # Aguardando até que a última tarefa seja visível
    END

    # Verificando se as tarefas foram adicionadas corretamente
    FOR    ${i}    IN RANGE    5
    Element Should Contain    css:li:nth-child(${i+1})    Tarefa ${i}
    END
#Marcação de Tarefas Concluídas
