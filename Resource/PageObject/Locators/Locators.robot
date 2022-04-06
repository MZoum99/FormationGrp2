*** Variables ***
#xpaths de création de compte
${Prenom}         //input[@name="firstName"]
${nom}            //input[@name="lastName"]
${adresse_mail}    //input[@name="email"]
${mot_pass}       //input[@name="password"]
${Num_tele}       //input[@name="phone"]
${btn_inscription}    //div[@class="col10 -df -ptl"]//button[contains(.,"Créer votre compte")]
${case_accepter1}    //label[@class="lbl"][contains(.,"accepte")]
${message_error}    //div[@class="fi-er"][contains(.,"Minimum 6 caractères")]
#xpaths d'authentification
${email}          //input[@name='email']
${pwd}            //input[@name="password"]
${btn_cnx}        //button[@class="btn _prim _i -mts"]//span[contains(.,"Se connecter")]
${pwd_oublie}     //div[@class="-df -j-bet -i-base"]//a[contains(.,"Mot de passe oublié ?")]
${msg_erreur}     //div[@class="fi-er"    and contains(.,"E-mail et/ou mot de passe incorrects")]
${url1}           //input[@id="dpdw-login" and @aria-label="Bonjour, raja"]
#xpaths de deconnexion
${button_name}    //label[@class='trig -df -i-ctr -fs16']
${button_logout}    //button[contains(text(),"Déconnexion")]
${button_popup}    //button[@aria-label='newsletter_popup_close-cta']
#xpaths d'ajout de produit au panier
${xpath_produit}    //a[@data-id='SU746OT17WY1ENAFAMZ']
${xpath_button}    //button[@class='cls'] [@aria-label='Fermer']
${xpath_buy}      //button[@class='add btn _prim -pea _i -fw']
${xpath_popup}    //div[@class='cnt']
${xpath_banner}    //img[@alt='Ramadan Top Banner Desktop']
${xpath_cart}     //a[@class='-df -i-ctr -gy8 -hov-or5 -phs -fs16']
${xpath_research}    //input[@name='q'] [@id='fi-q']
#xpaths de suppression du produit du panier
${btn_panier}     //a[@class="-df -i-ctr -gy8 -hov-or5 -phs -fs16"]//span[@id="ci"]
${image}          //div[@class="img-c"]//img[@class="img"]
${titre}          //div[@class="main"]//h3[@class="name"]
${prix}           //div[@class="sd"]//div[@class="prc"]
${lien_suppr}     //button[@class="btn _def _ti -mra" and contains(.,"Supprimer")]
${btn_retirer}    //button[@class="btn _prim _i -fw -fh" ]//span[contains(.,"Retirer le produit")]
${msg_supp}       //div[@class="cnt"]
#xpath augmenter la quantité du produit dans le panier
${xpath_increase}    //button[@class='btn _prim _qty -paxs'] [@aria-label='augmenter la quantité panier']
