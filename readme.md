# verziókezelés
## helyi repo létrehozása

- inicializálás
    > git init
- ellenörzés
    > git status
- előkészítjük comit-ra (eltárolni):
    > git add .
- ellenörzés:
    > git status
- helyi gépen ellenőrizzük le a felhasználó nevünket és emailünket
    > git config user.name

    > git config user.email
- eltároljuk mint egy új verzió
    > git commit -m "first commit"

    ## összekapcsolás a távoli repoval

    - git hub repo létrehozása
    - össze kapcsolási parancs:
     >git remote add origin https://token@github.com/KVirag/zarodoga.git

     - meg kell mondani a legelső alkalommal, hogy melyik ágat használjuk és feljesszük a legújjabb verziókat :
        > git push -u origin master

    - további verziók esetén:
        >git  push
        >
         >git commit -m "update read me"
