*** Settings ***
Documentation     Cette bibliotheque contient des Keywords pour s'authentifier.

*** Keywords ***
Saisir les données
    [Arguments]    ${email1}    ${pwd1}
    [Documentation]    Keyword qui saisie les données.
    Clear Element Text    ${email}
    Clear Element Text    ${pwd}
    Input Text    ${email}    ${email1}
    Input Password    ${pwd}    ${pwd1}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/SignIn/Saisiedonnee_signin.png

Verifier le message d'erreur
    [Documentation]    Keyword qui vérifie le message d'erreur
    Wait Until Element Is Visible    ${msg_erreur}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/SignIn/msgerreur_signin.png

Verifier la navigation
    [Documentation]    Keyword responsable de vérifier la navigation.
    Wait Until Page Contains Element    ${url1}
    #A enlever apres integration de creation de compte
    Click Element    //a[@class='-df -i-ctr -mra']
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/SignIn/navigation_signin.png

Authentification a jumia
    [Arguments]    ${email1}    ${pwd1}
    #Cliquer sur le lien    ${url_login}
    Verifier l'apparition des elements    ${email}    ${pwd}    ${btn_cnx}    ${pwd_oublie}
    Saisir les données    ${email1}    ${pwd1}
    Cliquer sur le bouton Connexion    ${btn_cnx}
    Verifier la navigation    ${url1}

Authentification a jumia avec donnes erronees
    [Arguments]    ${email1}    ${pwd1}
    Cliquer sur le lien    ${url_login}
    Verifier l'apparition des elements    ${email}    ${pwd}    ${btn_cnx}    ${pwd_oublie}
    Saisir les données    ${email1}    ${pwd1}
    Cliquer sur le bouton Connexion    ${btn_cnx}
    Verifier le message d'erreur
