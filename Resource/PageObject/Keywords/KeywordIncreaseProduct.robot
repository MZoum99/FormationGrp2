*** Settings ***
Documentation     Cette bibliotheque est responsable pour le keyword qui augmente la quantité d'un produit

*** Keywords ***
Augmenter La Quantité
    [Arguments]    ${click_number}
    [Documentation]    Keywords qui augmente le nombre de la quantite
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Resultats/avant_quantite.png
    Wait Until Page Contains Element    ${xpath_increase}
    ${times}=    catenate    SEPARATOR=    ${click_number}    x
    Repeat Keyword    ${times}    Click Button    ${xpath_increase}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Resultats/apres_quantite.png

Incrementer Nombre Produit
    [Arguments]    ${click_number}
    Augmenter La Quantité    ${click_number}
