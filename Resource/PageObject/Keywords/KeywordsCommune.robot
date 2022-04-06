*** Settings ***
Documentation     Cette bibliotheque contient des Keywords commune.

*** Keywords ***
Ouvrir Page Jumia
    [Documentation]    Keyword qui ouvre la page Jumia
    Open Browser    ${url}    Chrome
    Maximize Browser Window
    Go To    ${url}

Cliquer sur le lien
    [Arguments]    ${url_login}
    [Documentation]    Keyword qui clique sur le lien de l'authentification
    Open Browser    ${url_login}    Chrome
    Maximize Browser Window
    Go To    ${url_login}

Verifier l'apparition des elements
    [Arguments]    ${email}    ${pwd}    ${btn_cnx}    ${pwd_oublie}
    [Documentation]    Keyword qui verifie l'apparition des elements
    #Wait Until Page Contains    ${email}
    Wait Until Element Is Visible    ${email}
    Wait Until Element Is Visible    ${pwd}
    Wait Until Element Is Visible    ${btn_cnx}
    Wait Until Element Is Visible    ${pwd_oublie}

Cliquer sur le bouton Connexion
    [Arguments]    ${btn_cnx}
    [Documentation]    Keyword qui clique sur le bouton connexion
    set selenium implicit wait    6
    Click Element    ${btn_cnx}
