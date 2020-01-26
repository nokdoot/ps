#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Cwd qw/ cwd /;

my $dir = cwd;

say $dir;
