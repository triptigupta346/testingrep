#! /usr/bin/perl
use strict;
use warnings;


#use lib 'D:/my/';

 BEGIN{
 unshift(@INC, 'D:/');
 }
 
use my::Arithmetic qw(subtract);

#require "Arithmetic::Arith.pl";

my $packname = __PACKAGE__;

#my $add=add(1,2);



#print "$add\n\n";
#print "$packname";

my $foo='bar';

#print "$$foo";

my @arrr = (1,2,3,3,4,5,6,6);
use Data::Dumper;
my %bh;
my @bh= keys %{{map{$_=>1} @arrr}};
print @bh;

print "\n\n";
print subtract(7,2),"\n";


# print *bh;