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
Contagem de tarefas pendentes
    ${tasks_count}=    Get Text    css=.pending-num
    Log    Number of pending tasks: ${tasks_count}
Marcação de Tarefas Concluídas
    FOR    ${i}    IN RANGE    1    6
    ${script}    Set Variable    return document.querySelectorAll('li.list.pending input[type="checkbox"]')[${i - 1}].checked = true;
    Execute JavaScript    ${script}
    END
Exclusão de Tarefas
    ${trash_count}=    Get Element Count    css=i.uil-trash
    FOR    ${INDEX}    IN RANGE    ${trash_count}
        ${element}=    Get WebElement    css=li:nth-child(1)
        Mouse Over    ${element}
        Click Element    css=li:nth-child(1) i.uil-trash
        Sleep    1s
    END
Limpeza da lista de tarefas
    Wait Until Element Is Visible    class=clear-button
    Click Button    class=clear-button