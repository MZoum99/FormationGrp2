*** Settings ***
Documentation     Cette bibliotheque contient des Keywords pour la creation de compte

*** keywords ***
Cliquer sur lien
    [Documentation]    Keywords qui clique sur le lien
    Open Browser    ${url_creation1}    Chrome
    maximize browser window
    Go To    ${url_creation1}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/signup_creation.png

Cocher la première case
    [Documentation]    Keywords qui coche la premiere case
    Click Element    ${case_accepter1}
    Click Button    ${xpath_button}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/casecochée_creation.png

Verifier l'apparition du msg d'erreur
    [Documentation]    Keywords qui verifie l'appariton du message d'erreur
    Wait Until Element Is Visible    ${message_error}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/erreur_creation.png

Saisir les données d'inscription
    [Arguments]    ${Prenom1}    ${nom1}    ${adresse_mail1}    ${mot_pass1}    ${Num_tele1}
    [Documentation]    Keywords qui saisie les donnee d'inscription
    Clear Element Text    ${Prenom}
    Clear Element Text    ${nom}
    Clear Element Text    ${adresse_mail}
    Clear Element Text    ${mot_pass}
    Clear Element Text    ${Num_tele}
    Input Text    ${Prenom}    ${Prenom1}
    Input Text    ${nom}    ${nom1}
    Input Text    ${adresse_mail}    ${adresse_mail1}
    Input Password    ${mot_pass}    ${mot_pass1}
    Input Text    ${Num_tele}    ${Num_tele1}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Creationcompte/infos_creation.png

Cliquer sur le bouton creer votre compte
    [Documentation]    Keywords qui clique sur le bouton de création de compte
    Run Keyword And Ignore Error    Scroll Element Into View    ${btn_inscription}
    Click Element    ${btn_inscription}

Creation de compte
    [Arguments]    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    [Documentation]    Test case qui permet la creation d'un compte Jumia
    #Cliquer sur lien
    Saisir les données d'inscription    ${Prenom}    ${nom}    ${adresse_mail}    ${mot_pass}    ${Num_tele}
    Cliquer sur le bouton creer votre compte

Creation du compte avec données incorrect
    [Arguments]    ${Prenom1}    ${nom1}    ${adresse_mail1}    ${mot_pass1}    ${Num_tele1}
    [Documentation]    Test case qui essaye de créer un compte Jumia avec des informations incorrect
    Cliquer sur lien
    Saisir les données d'inscription    ${Prenom1}    ${nom1}    ${adresse_mail1}    ${mot_pass1}    ${Num_tele1}
    Cocher la première case
    Cliquer sur le bouton creer votre compte
    Verifier l'apparition du msg d'erreur
