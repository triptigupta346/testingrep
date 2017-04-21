use Data::Dumper;

my $st='acacabcatghhellomvnsdb';

my $gh = ["aca","cat","hello","world"];


foreach my $fh(@$gh) {
    $hash->{$fh} = 0;
    while( $st =~ /(?=$fh)/g ) {
	   print $fh."herere\n";
        $hash->{$fh}++;
    }
}

print Dumper($hash );




