#/bin/bash

if [[ -d database]]; then
  else
  mkdir database
fi

#Fazer download de database LaPS Benchmark.
if [[ -e database/Lapsbm16k-master.zip]]; then
  cd database/
 unzip Lapsbm16k-master.zip
else  
cd database && wget https://gitlab.com/fb-audio-corpora/lapsbm16k/-/archive/master/lapsbm16k-master.zip

unzip lapsbm16k-master.zip
fi

#Preparar banco de dados de voz

#Divibdo audios transcritos por gênero

#Female

cd database/lapsbm
mkdir female
mv *-F*.txt female/
mv *-F*.wav female/

#Male

mkdir male
mv *-M*.txt male/
mv *-M*.wav male/
txt.done.data

#Modifique de acordo com que deseja
#male para Masculino, female para Feminino.

#Criando arquivo txt.done.data
$DIR=male
cd $DIR

TXT=txt.done.data

for x in $(seq -f "%04g" 1 680); do 
echo "( LapsBM_$x \"$(cat LapsBM_$x.txt)\" )" >> $DONE
done

for i in $(seq -f "%04g" 1 680); do
if [ -f LapsBM_$i.txt ]
then
echo "Concluindo"
else
sed -i "/LapsBM_$i/d" $DONE
echo "Corrigindo"
fi
done

#Reunido todos os arquivos.

cd ../
mkdir lapsbm16k_$DIR/wav
mkdir lapsbm16k_$DIR/etc

cp $DIR/*.wav lapsbm16k_$DIR/wav/
cp $DIR/txt.done.data lapsbm16k_$DIR/etc/
echo "Database feito com sucesso!"

