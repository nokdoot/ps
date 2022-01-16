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

sub is_int {
    my $n = shift;
    return $n =~ /^-*\d+$/;
}
    
sub say_all {
    my @args = @_;
    say join ' ', @args;
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
   
my $count = read_line;

for (1..$count) {
    my ($a, $b, $c) = split q{ }, read_line;
    if ($b - $a == $c - $b) {
        say 'yes';
        next;
    }
    else {
        my $_a = $b - ($c - $b);
        my $_b = ($a + $c) / 2;
        my $_c = $b + ($b - $a);

        if (is_int $_a / $a and $_a / $a > 0) {
            say 'yes';
            next;
        }

        if (is_int $_b / $b and $_b / $c > 0) {
            say 'yes';
            next;
        }
        
        if (is_int $_c / $c and $_c / $c > 0) {
            say 'yes';
            next;
        }
        say 'no';
    }
}
