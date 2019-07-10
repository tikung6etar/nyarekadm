// Author Name : Bangka 6etar
// Information List : 2000 list
// contact here : BangkaXploiter@gmail.com
// Fb : http://facebook.com/AkbarUy
// greetz : Bangka 6etar
#!/bin/bash
#by Bangka 6etar
print "   
	
 _  _______ __  __    __   _____ _____  _    ____
| |/ / ____|  \/  |  / /_ | ____|_   _|/ \  |  _ \
| ' /|  _| | |\/| | | '_ \|  _|   | | / _ \ | |_) |
| . \| |___| |  | | | (_) | |___  | |/ ___ \|  _ <
|_|\_\_____|_|  |_|  \___/|_____| |_/_/   \_\_| \_\
                                                                                         
                Admin Finder - coded by Bangka 6etar
  Information list : 2000 list
  Thanks to  :Akbar Dravinky
";

clear
wget https://gist.githubusercontent.com/YuriMV/da83ee70e436b3ba2bd5f8eeba118e51/raw/3bfa2a541fd2f05cfceabd5b17f1b894ecd193ab/painel.txt 2>/dev/null; rm -rf painel.txt.1 2>/dev/null
read -p "Digite o site: " site
printf "\n"
  for i in `cat painel.txt`
  do
    curlvar=$(curl -s -o /dev/null -w "%{http_code}" $site/$i)
        if [ "$curlvar" = "301" ] || [ "$curlvar" = "302" ] || [ "$curlvar" = "201" ]
          then
          printf "Encontrado : \e[04;34m$site/$i\n\e[0m"
          break
           else
          printf "\e[05;31mNao encontrou!\n\e[0m"
          fi
          done
