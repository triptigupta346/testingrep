#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
print "Hello, World...\n";



my %hash=('ashu'=>45,'tripti'=>65,'alok'=>23,'harsi'=>67);


foreach my $k(sort{$hash{$a}<=>$hash{$b}}keys %hash)
{
	print "$k =>$hash{$k}\n";
}
print Dumper(\%hash);


my @people = (
        { name => 'Becky', age => 23},
        { name => 'Simon', age => 43},
        { name => 'Bianca', age => 29},
        { name => 'Steven', age => 23},
        { name => 'Greg', age => 50},
        { name => 'Andrew', age => 19},
    );

foreach my $h (sort {$a->{age} <=>$b->{age}}@people) 
{
	print "$h->{name} is $h->{age} \n";
}

my @hhh=qw/amit jay jyo anki tpt/;

my @gg=reverse @hhh;

print "@gg";


print "$ARGV[0]";

my $commandline ='';
while (@ARGV)
{
	$commandline = "$commandline"." ".shift(@ARGV);
	print "$commandline\n\n";
}

print "\ncommand====$commandline";


my @x = qw(foo_11 bar_2_bar text_3);
print join " ", sort @x;
 
my @y = sort { ($a =~ /(\d+)/)[0] <=> ($b =~ /(\d+)/)[0] } @x;

print "\n\n";
 
print join " ", @y;


my @qwords = qw(foo bar baz foo zorg baz);
my %seen;
#my @uniq= grep { !$seen{$_}++ } @words;

map{$seen{$_}++}@qwords;

my @uniq = grep{$seen{$_} == 1}(keys %seen);

# foreach (@words) 
# {
	# if(!$seen{$_}++)
	# {
		# push(@uniq,$_);
		
	# }
# }

print "\n\n";

print join",",@uniq;

print "filename====$0";

print "\n\n";
my $str = 'stressed';
my $rev=reverse $str;
 print "$rev\n\n";
my @words = qw(Foo Bar Moo);
print  scalar reverse join '', @words;



my @array = ("This", "is", "a", "list");


#print "@array";


$[ = 3;

my @myarray = ("Here", "is", "a", "list");

print $myarray[5];