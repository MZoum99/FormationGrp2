*** Settings ***
Resource          ../Resource/Resources.txt

*** Test Cases ***
TestJumia
    Creation du compte avec données incorrect    test    testat    t2826042@gmail.com    &é    0697339254
    Creation de compte    safae    Elyazighi    t2826042@gmail.com    &é"'(-è_ç    0697339254
    Deconnexion
    Authentification a jumia avec donnes erronees    rajaa.jaouai1998@gmail.com    1234
    Authentification a jumia    rajaa.jaouai1998@gmail.com    &é"'(-è_ç
    Ajout Produit    Suzana
    Incrementer Nombre Produit    1
    Supprimer un produit
