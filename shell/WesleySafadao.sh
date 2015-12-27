#!/bin/sh
if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
  echo "Informe nos parametros separado por espaço a sua data de nascimento (dd mm yy)." 
  echo "Exemplo: ./WesleySafadao.sh 21 10 94"
  exit;
fi

dia=$1 
mes=$2
ano=$3 

for i in `seq 1 $mes` ; do
  sum=$(($sum+$i))
done

x=$(($ano/100))
y=$((50-$dia))
safadeza=$(($x*$y))
safadeza=$((sum+$safadeza))

anjo=$((100-$safadeza))

echo "Você é $anjo% anjo e $safadeza% safado."

