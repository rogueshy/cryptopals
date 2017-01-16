use strict;
use warnings;

my $pan = 'thefiveboxingwizardsjumpquicklyTHEFIVEBOXINGWIZARDSJUMPQUICKLY'; #Pangram
my $hex1= '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'; #input
my $h1_le = length ($hex1);
my $str1 = pack ("H*", $hex1);
my $s1_le = length ($str1);


my $i;
my $re = qr/\s([tT]he)\s|(ing)|\s(a)\s|\s(an)\s/p;
foreach my $char (split //, $pan) {
	my $line = $char;
	for ($i = 1; $i < $s1_le; $i++) {
		$line = $line . $char;
	}
	my $unhex = $str1 ^ $line;
	if ($unhex =~ /$re/g ) {
		print "Character: $char \n";
		print "Answer: $unhex \n"; 
		}	
}
