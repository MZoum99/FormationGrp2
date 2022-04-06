*** Settings ***
Documentation     Cette bibliotheque contient des Keywords pour se deconnecter

*** Keywords ***
Deconnecter
    [Documentation]    Keywords qui permet de se deconnecter du compte
    Wait Until Page Contains Element    //header[@class='-df -i-ctr -pvs -phm -bb -mh-48px']
    Wait Until Page Contains Element    ${button_name}
    Click Element    ${button_name}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Deconnexion/avantdeco_deconnexion.png
    Wait Until Page Contains Element    ${button_logout}
    Click Element    ${button_logout}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/Deconnexion/apresdeco_deconnexion.png
    Wait Until Page Contains Element    ${button_popup}
    Click Button    ${button_popup}
    Wait Until Page Contains Element    //label[@class='trig -df -i-ctr -fs16']
    Click Element    //label[@class='trig -df -i-ctr -fs16']
    Wait Until Page Contains Element    //a[@class='btn _prim -fw _md']
    Click Element    //a[@class='btn _prim -fw _md']

Deconnexion
    Deconnecter
