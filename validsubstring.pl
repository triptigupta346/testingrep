#! /usr/bin/perl
use strict;
#use warnings;


my $str="(()(";

my @arr = split('',$str);

print $_."\n" foreach(@arr);

my @stack;
my $count=0;

foreach(@arr){
	if($_ eq '('){
		push(@stack,$_);
	}else{
		if($stack[$#stack] eq '('){
			pop(@stack);
			$count+=2;
		} 
		else{
			push(@stack,$_);
		}

	}
}

print "count===".$count."\n";