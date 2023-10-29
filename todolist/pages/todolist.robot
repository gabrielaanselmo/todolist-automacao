*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Adição de Tarefas
    FOR    ${i}    IN RANGE    5
    Input Text    css:.input-field textarea    Tarefa ${i}
    Press Keys    css:.input-field textarea    ENTER
    Wait Until Element Is Visible    css:li:last-child
    END

    FOR    ${i}    IN RANGE    5
    Element Should Contain    css:li:nth-child(${i+1})    Tarefa ${i}
    END
Marcação de Tarefas Concluídas
    FOR    ${i}    IN RANGE    1    6
    ${script}    Set Variable    return document.querySelectorAll('li.list.pending input[type="checkbox"]')[${i - 1}].checked = true;
    Execute JavaScript    ${script}
    END
#Exclusão de Tarefas