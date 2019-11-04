#!/usr/bin/env perl
    
use strict;
use warnings;
use feature qw/ say /;

my @tokens = ();

my $n = read_token();

my @locations = ();
for ( 1..$n ) {
    push @locations, read_token();
}

my $l = 1;
my $r = ($n-1) * $l;

my $min = abs($locations[1] - $l) + abs($locations[-1] - $r);

while ( 1 ) {
    $l++;
    $r = ($n-1) * $l;
    my $new_min = abs($locations[1] - $l) + abs($locations[-1] - $r);
    if ( $new_min < $min ) {
        $min = $new_min;
        next;
    }
    $l--;
    last;
}

my $answer = 0;
shift @locations;
my $i = 1;
while (@locations) {
    $answer += abs ( $i * $l - (shift @locations) );
    $i++;
}

say $answer;

sub read_line {
    chomp (my $line = <STDIN>);
    return $line;
}

sub read_token {
    @tokens = split q{ }, read_line() if @tokens == 0;
    return shift @tokens;
}

sub min {
    my @numbers = @_;
    my $min = shift @numbers;
    for ( @numbers ) {
        $min = $min<$_ ? $min : $_;
    }
    return $min;
}

sub max {
    my @numbers = @_;
    my $max = shift @numbers;
    for ( @numbers ) {
        $max = $max > $_ ? $max : $_;
    }
    return $max;
}

sub sum {
    my @numbers = @_;
    my $sum = 0;
    for (@numbers) {
        $sum += $_;
    }
    return $sum;
}
