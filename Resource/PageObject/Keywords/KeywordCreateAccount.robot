*** Settings ***
Documentation     Cette bibliotheque contient des Keywords pour la creation de compte

*** keywords ***
Cliquer sur lien
    [Arguments]    ${url_creation1}
    [Documentation]    Keywords qui clique sur le lien
    Open Browser    ${url_creation1}    Chrome
    maximize browser window
    Go To    ${url_creation1}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/signup_creation.png

Cocher la première case
    [Arguments]    ${case_accepter1}
    [Documentation]    Keywords qui coche la premiere case
    Click Element    ${case_accepter1}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/casecochée_creation.png

Verifier l'apparition du msg d'erreur
    [Documentation]    Keywords qui verifie l'appariton du message d'erreur
    Wait Until Element Is Visible    ${message_error}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/erreur_creation.png

Saisir les données d'inscription
    [Arguments]    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    [Documentation]    Keywords qui saisie les donnee d'inscription
    Input Text    ${Prenom}    safae
    Input Text    ${nom}    Elyazighi
    Input Text    ${adresse_mail}    safae@yopmail.com
    Input Password    ${mot_pass}    &é"'(-è_ç
    Input Text    ${Num_tele}    0654342345
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/infos_creation.png

Cliquer sur le bouton creer votre compte
    [Documentation]    Keywords qui clique sur le bouton de création de compte
    Run Keyword And Ignore Error    Scroll Element Into View    ${btn_inscription}
    Click Button    ${xpath_button}
    Click Element    ${btn_inscription}

Creation de compte
    [Arguments]    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    [Documentation]    Test case qui permet la creation d'un compte Jumia
    Cliquer sur lien    ${url_creation1}
    Saisir les données d'inscription    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    Cocher la première case    ${case_accepter1}
    Cliquer sur le bouton creer votre compte

Creation du compte avec données incorrect
    [Arguments]    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    [Documentation]    Test case qui essaye de créer un compte Jumia avec des informations incorrect
    Cliquer sur lien    ${url_creation1}
    Saisir les données d'inscription    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    Cocher la première case    ${case_accepter1}
    Cliquer sur le bouton creer votre compte
    Verifier l'apparition du msg d'erreur
