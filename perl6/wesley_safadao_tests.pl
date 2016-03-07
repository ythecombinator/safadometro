#!/usr/bin/env perl6
use lib $*PROGRAM-NAME.IO.dirname;
use wesley_safadao;

my %percent = wesley-safadão(:dia(13), :mês(6), :ano(87));
say "Anjo: { %percent<anjo> }%";
say "Safadeza: { %percent<safadeza> }%";
