
#a)
echo 'zad a)'
ps aux | awk '{
  text="Uzytkownik " $1 " ma uruchomiony proces " $11 " ( CPU=" $3 ", MEM=" $4 " )" ;
  print text;
}'
#b)
echo 'zad b)'
ps aux | awk '{
  n=split($11,a,"/");
  text="Uzytkownik " $1 " ma uruchomiony proces " a[n] " ( CPU=" $3 ", MEM=" $4 " )" ;
  print text;
}'
#c
echo 'zad c)'
ps aux | awk 'BEGIN {CPU_sum=0; MEM_sum=0};
 {CPU_sum+=$3; MEM_sum+=$4}
 END {print "CPU " CPU_sum ", MEM " MEM_sum;}'

#d
echo 'zad d)'
ps aux | awk '{
  if(NR>1){
    a_CPU[$1] += $3;
    a_MEM[$1] += $4;
  }  
}
  END {
    for(user in a_CPU){
      print "Uzytkownik " user " CPU: " a_CPU[user] ", MEM: " a_MEM[user];
    }
}'
#e
echo 'zad e)'
ps aux | awk '{
  a_CPU[$1] += $3;
  a_MEM[$1] += $4;
}
  END{
  first = 1;
    for(user in a_CPU){
      if( first == 1){
        max_CPU = a_CPU[user];
        max_MEM = a_MEM[user];
        max_user = user;
        first = 0;
      }
      if(a_CPU[user] > max_CPU){
        max_CPU = a_CPU[user];
        max_CPUUser = user;
      }
      if(a_MEM[user] > max_MEM){
        max_MEM = a_MEM[user];
        max_user = user;
      }
    }
    print "Uzytkownik " max_user " MAX_MEM " max_MEM ", MAX_CPU " max_CPU;
}'
