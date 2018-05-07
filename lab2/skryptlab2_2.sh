
./skryptlab2.sh

direct = lab2/a/e
link_plik1 = `realpath lab2/a/b/plik1`
link_plikA = `realpath lab2/c/d/plikA`

for plik in `ls $direct`; do 
	if test -L $direct/$plik; then 
		link_for = `realpath $direct/$plik`
		 if test $link_plik1 = $link_for || test $link_plikA = $link_for; then
			echo $link_for
		fi
	fi
done
