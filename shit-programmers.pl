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
[[0,0,0,1],[2,0,0,1],[4,0,0,1],[0,1,1,1],[1,1,1,1],[2,1,1,1],[3,1,1,1],[2,0,0,0],[1,1,1,0],[2,2,0,1]]
