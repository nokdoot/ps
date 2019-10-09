#!/usr/bin/env perl

use strict;
use warnings;
use feature qw / say /;

my $input = <DATA>;

$input =~ s/^\[\[/{{/;
$input =~ s/\]\]$/}}/;
$input =~ s/\[/{/g;
$input =~ s/\]/}/g;
$input =~ s/},/},\n/g;

say $input;

__DATA__
[[3, 6], [4, 3], [3, 2], [1, 3], [1, 2], [2, 4], [5, 2]]
