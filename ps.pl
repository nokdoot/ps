#!/usr/bin/env perl
    
use strict;
use warnings;
use feature qw/ say /;
    
# essential
my @tokens = ();

my $n = read_token();
my $k = read_token();

while ( $k > 0 ) {
    my $r = $n % 10;
    if ( $r == 0 ) { 
        $n = int($n / 10);
        $k--;
    }
    else {
        $r = min($r, $k);
        $k -= $r;
        $n -= $r;
    }
}
say $n;

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
