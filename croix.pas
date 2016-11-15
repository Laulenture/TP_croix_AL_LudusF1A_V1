PROGRAM LaCroix_Isabelle;

{
ALGO:Croix

BUT:Fait une croix d'une taille donn‚e faite d'un caractŠre donn‚
ENTREE:Une lettre et un nombre donn‚ par l'utilisateur
SORTIE:

VAR: chara :CARACTERE
     taille, i, j : ENTIER

DEBUT
        ECRIRE "Veuillez entrer un caractere"
        LIRE chara
        ECRIRE "Veuillez entrer un nombre"
        LIRE taille
        SI (taille < 0) ALORS
                ECRIRE "ERREUR, veuillez entrer une valeur superieur ou egale a 0"
        POUR i <-1 A taille FAIRE
        DEBUT
                SI j <- 1 A taille FAIRE
                DEBUT
                SI (j=1) OU (j=taille-(i-1)) ALORS
                        ECRIRE chara
                SINON
                        ECRIRE " "
                FIN
        FIN
FIN
}

uses crt;

VAR
        chara : char;
        taille, i, j : integer;

BEGIN
        clrscr;
        writeln('Veuillez entrer un caractere');
        readln(chara);
        writeln('Veuillez entrer la taille de la croix');
        readln(taille);
        if (taille < 0) then
                writeln('ERREUR, veuillez entrer une valeur superieur ou egale a 0');
        for i:=1 to taille do
        BEGIN
                for j:=1 to taille do
                BEGIN
                if (j=i) or (j=taille-(i-1)) then
                        write(chara)
                else
                        write(' ')
                END;
        writeln();
        END;
        readln();
END.
