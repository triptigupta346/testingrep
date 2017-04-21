#!/usr/bin/perl
#use strict;
use warnings;

print "Hello, World...\n";


my @dates=qw(22/08/2004 02/04/2001 17/04/2013 12/01/1977 02/11/2011);
my @newdate;

#foreach my $h (@dates) 
#{
#	my @arr=split('/', $h);
#	my $j=join('',($arr[2],$arr[1],$arr[0]));
#	push(@newdate, $j);
#	
#}
#$arr1=grep(/\d{4}\d{2}\d{2}/,@dates);
#
#
#foreach my $h (@dates) 
#{
#	print $h;
#	if($h = m/d{4}d{2}d{2}/)
#	{
#		print $&;
#		#$y=	join('/',($3,$2,$1));
#	}
#}

@newdate=sort{join('',(split '/',$a)[2,1,0]) <=> join('',(split '/',$b)[2,1,0])}@dates;

print "@dates \n\n";

print "@newdate \n\n";

 "good" =~ /(?:o(?{print "o"}))*d/;

  "aabcdeeeee"=~/d(?{print "\na exits"})e(?{print "\nb exits"})/;

 
 $_ = "SKIP buzzer";
  if(/(?{print "Testing\n";})([a-z])\1(?{print "Got a match: $1\n"})/) {
      print "YES\n";
  } else {
      print "NO\n";
  }

 