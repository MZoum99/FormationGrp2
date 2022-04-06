*** Settings ***
Documentation     Cette bibliotheque contient des Keywords qui suppriment un produit du panier.

*** Keywords ***
Cliquer sur le bouton panier
    [Documentation]    Keyword qui clique sur le bouton panier.
    Click Element    ${btn_panier}

Verifier l'apparition des elts
    [Documentation]    Keyword qui verifie l'appariton des elts
    Wait Until Element Is Visible    ${image}
    Wait Until Element Is Visible    ${titre}
    Wait Until Element Is Visible    ${prix}
    Wait Until Element Is Visible    ${lien_suppr}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/SuppressionProduit/panier_supprimer.png

Cliquer sur le lien Supprimer
    [Documentation]    Keyword qui clique sur le lien supprimer
    Click Element    ${lien_suppr}

Verifier l'apparition d'element
    [Documentation]    Keyword qui verifie l'apparition de l'element
    Wait Until Element Is Visible    ${btn_retirer}

Cliquer sur le bouton retirer
    [Documentation]    Keyword qui clique sur le bouton retirer
    Click Element    ${btn_retirer}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/SuppressionProduit/delete_supprimer.png

Verifier l'apparition du msg
    [Documentation]    Keyword qui verifie l'apparition du message.
    Wait Until Element Is Visible    ${msg_supp}
    Capture Page Screenshot    C:/Users/mzoumhan/Formation/Screenshots/SuppressionProduit/msg_supprimer.png

Supprimer un produit
    Cliquer sur le bouton panier    ${btn_panier}
    Verifier l'apparition des elts    ${image}    ${titre}    ${prix}    ${lien_suppr}
    Cliquer sur le lien Supprimer    ${lien_suppr}
    Verifier l'apparition d'element    ${btn_retirer}
    Cliquer sur le bouton retirer    ${btn_retirer}
    Verifier l'apparition du msg    ${msg_supp}
