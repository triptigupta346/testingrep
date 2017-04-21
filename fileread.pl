#!/usr/bin/perl
use strict;
use warnings;

print "Hello, World...\n";


open(FILE,'ref.pl');
my @arr=<FILE>;
#print splice(@arr,6,10);

my @fruit=('orange','mango','banana','cherry','berry');

my $new=splice(@fruit,1,3,'guava');

print "$new \n\n"; 

print "@fruit";

