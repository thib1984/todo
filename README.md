```
#todo
#exemples d alias a adapter et ajouter dans votre bashrc 
alias todolist='~/Scripts/todo/todolist.sh'
alias todolistnotag='todolist | grep -v "#"'
alias todoadd='~/Scripts/todo/todoadd.sh'
alias tododel='~/Scripts/todo/tododel.sh'
alias todotag='~/Scripts/todo/todotag.sh'
alias todountag='~/Scripts/todo/todountag.sh'
alias todolisttag='sed "s/ /\n/g" ~/.todo | grep "#" | sort | uniq'
alias todoclear='~/Scripts/todo/todoclear.sh'

#ajouter une tache avec tag
todoadd "init repo github #linux"
#lister les taches
todolist
#supprimer les taches 1 2 4
tododel 1 2 4
#lister les taches d un tag
todolist linux
#tager une ou plusieurs taches
todotag perso 1 4 7
#retirer tous les tag d une ou plusieurs taches
todountag 7
#lister les taches sans tag
todolistnotag
#reorganiser les id des taches
todoclear
```
