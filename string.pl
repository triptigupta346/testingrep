#! /usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $s = 'atcgcgtacatcgatac';

substr( $s, $_, 1 ) =~ tr[acgt][ACGT] for 3,6,9,12,15;;

print $s;


my $str="my name is tripti, tripti gupta, tripti tpt";

my @arr=(1,2,3);


$str=~ s/tripti/$_/ for (@arr);



print "hereer is :". $str;