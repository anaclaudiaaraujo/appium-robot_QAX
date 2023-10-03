*** Settings ***

Resource    ../resourses/base.resource

*** Test Cases ***

Deve marcar uma das opções
    Start session
    Get started
    Navigate to     Check e Radio
    Go to item      Botões de radio        Escolha sua linguagem preferida
    
    Click Element    xpath=//android.widget.RadioButton[contains(@text, "Javascript")]

    Close session