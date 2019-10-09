#!/usr/bin/env perl
    
use strict;
use warnings;
use feature qw/ say /;
   
chomp (my $line = <STDIN>);

my $q = $line;

for (1..$q) {
    chomp ($line = <STDIN>);
    my ($n, $r) = split q{ }, $line;
    $r++;
    chomp ($line = <STDIN>);
    my @monsters = split q{ }, $line;

    my $set = {};
    for (@monsters) {
        $set->{$_} = 1 if !defined $set->{$_};
    }

    @monsters = sort { $a <=> $b } keys %$set;

    my $answer = 0;
    my $i = 0;
    while ( $i < @monsters ) {
        if ( $r * $answer <= $monsters[$i] ) {
            pop @monsters;
            $answer++;
        }
        $i++;
    }
    say $answer;
}
