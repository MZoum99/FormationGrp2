*** Settings ***
Resource          ../Resource/Resources.txt

*** Test Cases ***
TestJumia
    #Creation du compte avec données incorrect    test    testat    bahatey513@royins.com    &é    0613336470
    #Creation de compte    safae    Elyazighi    bahatey513@royins.com    &é"'(-è_ç    0613336470
    #Deconnexion
    Authentification a jumia avec donnes erronees    rajaa.jaouai1998@gmail.com    1234
    Authentification a jumia    rajaa.jaouai1998@gmail.com    &é"'(-è_ç
    Ajout Produit    Suzana
    Incrementer Nombre Produit    2
    Supprimer un produit
