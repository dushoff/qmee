use strict;
use 5.10.0;

my $base = "https://github.com/";

while(<>){
	chomp;
	my $p = $_;
	s|/.*||;
	say "$_: $base$p\n";
}
