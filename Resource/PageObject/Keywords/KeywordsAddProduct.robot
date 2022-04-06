*** Settings ***
Documentation     Cette bibliotheque contient des Keywords qui ajoute un produit au panier.

*** Keywords ***
Rechercher Le Produit
    [Arguments]    ${produit_recherche}
    [Documentation]    Keywords qui recherche le produit
    Wait Until Page Contains Element    //button[@aria-label='Fermer la bannière']
    Wait Until Page Contains Element    ${xpath_research}
    Input Text    ${xpath_research}    ${produit_recherche}
    Press Keys    ${xpath_research}    ENTER
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/AjoutProduit/recherche_ajout.png

Cliquer Le Produit
    [Documentation]    Keywords qui clique sur le produit
    Wait Until Page Contains Element    ${xpath_produit}
    Run Keyword And Ignore Error    Scroll Element Into View    ${xpath_produit}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/AjoutProduit/cliqueproduit_ajout.png
    Click Element    ${xpath_produit}

Cliquer Le Bouton Acheter
    [Documentation]    Keyword qui clique sur le bouton acheter
    Wait Until Page Contains Element    ${xpath_buy}
    Run Keyword And Ignore Error    Scroll Element Into View    ${xpath_buy}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/AjoutProduit/produit_ajout.png
    Click Button    ${xpath_buy}

Ouvrir La Page De Panier
    [Documentation]    Keyword qui ouvre la page de panier
    Wait Until Page Contains Element    ${xpath_popup}
    Run Keyword And Ignore Error    Scroll Element Into View    ${xpath_banner}
    Click Element    ${xpath_cart}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/AjoutProduit/panier_ajout.png

Ajout Produit
    [Arguments]    ${produit_recherche}
    #Ouvrir Page Jumia
    Rechercher Le Produit    ${produit_recherche}
    Cliquer Le Produit
    Cliquer Le Bouton Acheter
    Ouvrir La Page De Panier
