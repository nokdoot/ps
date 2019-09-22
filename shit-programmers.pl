#!/usr/bin/env perl

use strict;
use warnings;
use feature qw / say /;

my $input = <DATA>;

$input =~ s/^\[\[/{/;
$input =~ s/\]\]$/}/;
$input =~ s/\[/{/g;
$input =~ s/\]/}/g;
$input =~ s/},/},\n/g;

say $input;

__DATA__
["fro??", "????o", "fr???", "fro???", "pro?"]
