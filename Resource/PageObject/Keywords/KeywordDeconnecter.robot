*** Settings ***
Documentation     Cette bibliotheque contient des Keywords pour se deconnecter

*** Keywords ***
Deconnecter
    [Documentation]    Keywords qui permet de se deconnecter du compte
    Wait Until Page Contains Element    ${button_name}
    Click Element    ${button_name}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Deconnexion/avantdeco_deconnexion.png
    Wait Until Page Contains Element    ${button_logout}
    Click Element    ${button_logout}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Deconnexion/apresdeco_deconnexion.png
    Wait Until Page Contains Element    ${button_popup}
    Click Button    ${button_popup}

Deconnexion
    Deconnecter
