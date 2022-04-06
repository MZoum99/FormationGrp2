*** Settings ***
Resource          ../Resource/Resources.txt

*** Test Cases ***
TestJumia
    Creation du compte avec données incorrect    test    testat    bitretigne@vusra.com    &é    0613336470
    Creation de compte    safae    Elyazighi    bitretigne@vusra.com    &é"'(-è_ç    0613336470
    Authentification a jumia avec donnes erronees    rajaa.jaouai1998@gmail.com    1234
    Authentification a jumia    rajaa.jaouai1998@gmail.com    &é"'(-è_ç
    Ajout Produit    Suzana
    Incrementer Nombre Produit    2
    Supprimer un produit
