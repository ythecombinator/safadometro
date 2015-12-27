use strict;

sub soma {
    return $_[0] >= 1 ? $_[0] + soma($_[0] - 1): $_[0]
}

sub wesley_safadao {
    my ($d, $m, $a) = ($_[0], $_[1], $_[2]);
    my ($safadeza) = soma($m) + $a / 100 * (50 - $d);
    my ($anjo) = 100 - $safadeza;
    return ($safadeza, $anjo);
}

1;
