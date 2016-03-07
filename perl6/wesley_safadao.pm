
sub soma(Int $num where * >= 1) {
    [+] 1 .. $num
}

sub wesley-safadão(Int :$dia! where 0 < * <= 31, Int :$mês! where 0 < * <= 12, Int :$ano) is export {
    my $safadeza = soma($mês) + $ano / 100 * (50 - $dia);
    my $anjo = 100 - $safadeza;
    :$safadeza, :$anjo;
}
