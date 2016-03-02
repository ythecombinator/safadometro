#!/usr/bin/env perl
use strict;
use FindBin qw($Bin);
use lib "$Bin";
use wesley_safadao;

my ($safadeza, $anjo) = wesley_safadao 13, 6, 87;
print "Anjo: $anjo%\n";
print "Safadeza: $safadeza%\n";
