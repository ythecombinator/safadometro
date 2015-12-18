#!/usr/bin/env fish
if [ (count $argv) -ne 3 ]
  echo "usage: fish safadometro.fish <dd> <mm> <yyyy>"
end

function safadeza
  set -l d $argv[1]
  set -l m $argv[2]
  set -l y (expr $argv[3] \% 100)

  set -l m_sum (seq $m | xargs | sed -e 's/ /+/g' | bc)

  echo "scale=2; $m_sum + ($y / 100) * (50 - $d)" | bc
end

function angel
  echo scale=2\; 100 - (safadeza $argv) | bc
end

echo (angel $argv)% anjo, mas aquele (safadeza $argv)% é vagabundo
