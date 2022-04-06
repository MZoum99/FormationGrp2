*** Settings ***
Documentation     Cette bibliotheque est responsable pour le keyword qui augmente la quantité d'un produit

*** Keywords ***
Augmenter La Quantité
    [Arguments]    ${click_number}
    [Documentation]    Keywords qui augmente le nombre de la quantite
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/QuantiteProduit/avant_quantite.png
    Wait Until Page Contains Element    ${xpath_increase}
    Wait Until Keyword Succeeds    ${click_number}    2 sec    Click Element    ${xpath_increase}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/QuantiteProduit/apres_quantite.png

Incrementer Nombre Produit
    [Arguments]    ${click_number}
    Augmenter La Quantité    ${click_number}
