*** Settings ***
Resource          ../Resource/Resources.txt

*** Test Cases ***
TestJumia
    #Creation du compte avec données incorrect    safae    Elyazighi    safae@yopmail.com    &é"'(-è_ç    0654342345
    #Creation de compte    safae    Elyazighi    safae@yopmail.com    &é"    0654342345
    Authentification a jumia avec donnes erronees    rajaa.jaouai1998@gmail.com    1234
    Authentification a jumia    rajaa.jaouai1998@gmail.com    &é"'(-è_ç
    #Deconnexion
    Ajout Produit    Suzana
    Incrementer Nombre Produit    3
    Supprimer un produit
