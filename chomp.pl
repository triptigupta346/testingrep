#!/usr/bin/perl
use strict;
use warnings;

$a = "abcdefghij";
 my $n = chop($a);
 print $n."\n";
 print $a."\n";

 $a = "abcdefghijs\n\n\n";
 $b = chomp($a);

 print "\n\n";
 print $b; #would return 1, it did remove something for sure

print "chomp a====$a\n";

print $a;