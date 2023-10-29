*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${BROWSER}                chrome
${URL}                    https://taskt0d0list.netlify.app/

*** Keywords ***
Acessando o Site - (Gerenciador de Tarefas)
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window