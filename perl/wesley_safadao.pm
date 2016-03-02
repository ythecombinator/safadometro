use strict;

sub soma {
    my $num = shift;
    return $num >= 1 ? $num + soma($num - 1): $num
}

sub wesley_safadao {
    my ($d, $m, $a) = @_;
    my $safadeza = soma($m) + $a / 100 * (50 - $d);
    my $anjo = 100 - $safadeza;
    return ($safadeza, $anjo);
}

1;
