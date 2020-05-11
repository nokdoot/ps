#!/usr/bin/env perl
    
use strict;
use warnings;
use feature qw/ say /;

use Carp;

# essential
my @tokens = ();

sub ceil {
    my $n = shift;
    my $in = int($n);
    return $n if $in == $n;
    return $in + 1;
}

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

sub ref_ref_scalar {
    my $ref = shift;
    return 1 if ref($ref) eq 'SCALAR';
}

sub toggle {
    my $ref = shift;
    croak "$ref does not reference to scalar" if !ref_ref_scalar($ref);

    $$ref = !$$ref;
}

sub odd {
    my $num = shift;
    return $num % 2 == 1;
}

sub even {
    my $num = shift;
    return $num % 2 == 0;
}

sub sum_of_digits {
    my $n = shift;
    my @numbers = split q{}, $n;

    my $sum = 0;

    for (@numbers) {
        $sum += $_;
    }

    return $sum;
}

# solution

sub interpolation {
    my ($n, $u) = @_;
    return 0 if $n == 0;
    return $u - $n;
}

my $n = read_token;

my $sum = sum_of_digits($n);

my $remains = $sum % 4;

if ($remains == 0) {
    say $n;
    exit(0);
}

while (sum_of_digits(++$n) % 4 != 0) {
}

say $n;
