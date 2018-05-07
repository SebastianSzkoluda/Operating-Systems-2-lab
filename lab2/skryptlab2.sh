rm -rf lab2

mkdir lab2
mkdir lab2/a
mkdir lab2/a/b
mkdir lab2/a/e
mkdir lab2/c
mkdir lab2/c/d

echo "test1" > lab2/a/b/plik1
echo "test2" > lab2/a/b/plik2
echo "testA" > lab2/c/d/plikA
echo "testB" > lab2/c/d/plikB

ln -s ../b/plik1 lab2/a/e/link_plik1
ln -s ../../c/d/plikA lab2/a/e/link_plikA
ln -s ../b/plik2 lab2/a/e/link_plik2
ln -s ../../c/d lab2/a/e/link_do_d

ln -s `realpath lab2/a/b/plik1` lab2/a/e/link_plik1_bez
ln -s `realpath lab2/c/d/plikB` lab2/a/e/link_plikB_bez
 

 
