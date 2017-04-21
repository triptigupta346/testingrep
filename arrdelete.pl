#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my @arr=(4,7,8,6,2,0 ,8);

print scalar(@arr)."\n";

delete $arr[4];

print "@arr\n\n";
print scalar(@arr);

my %hash=('k'=>'ppp','p'=>'jjj');

print Dumper(\%hash)."\n\n";

#print scalar(keys %$hash);

delete $hash{'k'};

print Dumper(\%hash)."\n\n";
#print Dumper($hash)."\n\n";


my %k = map{$_=>1}@arr;
print %k;


print "\n\nhfwllleiu====";
print $$;

#print scalar(keys %$hash);