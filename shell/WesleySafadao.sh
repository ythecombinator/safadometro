#!/bin/sh
if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
echo "Informe nos parametros separado por espaço a sua data de nascimento." 
echo "Exemplo: ./WesleySafadao.sh 21 10 94"
fi

dia=$1 
mes=$2
ano=$3 

for i in `seq 1 $mes` ; do
    sum=`expr $sum + $i`
done

x=`expr $ano / 100`
y=`expr 50 - $dia`
safadeza=$(($x*$y))
safadeza=$((sum+$safadeza))

anjo=$((100-$safadeza))

echo "Você é $anjo% e $safadeza% safado."

