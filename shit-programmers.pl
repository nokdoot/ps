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
[[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
