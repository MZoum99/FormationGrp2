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
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Resultats/Saisiedonnee_signin.png

Verifier le message d'erreur
    [Documentation]    Keyword qui vérifie le message d'erreur
    Wait Until Element Is Visible    ${msg_erreur}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Resultats/msgerreur_signin.png

Verifier la navigation
    [Documentation]    Keyword responsable de vérifier la navigation.
    Wait Until Page Contains Element    ${url1}
    #A enlever apres integration de creation de compte
    #Click Element    //a[@class='-df -i-ctr -mra']
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Resultats/navigation_signin.png

Authentification a jumia
    [Arguments]    ${email1}    ${pwd1}
    #Cliquer sur le lien
    Verifier l'apparition des elements
    Saisir les données    ${email1}    ${pwd1}
    Cliquer sur le bouton Connexion
    Verifier la navigation

Authentification a jumia avec donnes erronees
    [Arguments]    ${email1}    ${pwd1}
    #Cliquer sur le lien
    Verifier l'apparition des elements
    Saisir les données    ${email1}    ${pwd1}
    Cliquer sur le bouton Connexion
    Verifier le message d'erreur
