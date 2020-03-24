#!/usr/bin/env perl
    
use strict;
use warnings;
use feature qw/ say /;
use POSIX qw/ ceil /;
    
# essential
my @tokens = ();

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

# solve

my @chars = split q{}, read_line;

my $answer = 0;
my $n = @chars;
my $count_of_a = 0;

for (@chars) {
    $count_of_a++ if $_ eq 'a';
}

if ( ceil($n/2) <= $count_of_a ) {
    $answer = $n;
}
else {
    while ( ceil($n/2) > $count_of_a ) {
        $answer++;
        $n--;
    }
}

say $answer;
