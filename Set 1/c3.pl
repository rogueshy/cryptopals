use strict;
use warnings;
use MIME::Base64;
my $str2 = 'thefiveboXingwizardsjumpquickly'; #Pangram
my $i;
my $hex1= '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736';
my $h1_le = length ($hex1);

my $str1 = pack ("H*", $hex1);
my $s1_le = length ($str1);

foreach my $char (split //, $str2) {
	print "=== \n";
	print "Character: $char \n";
	my $line = $char;
	for ($i = 1; $i < $s1_le; $i++) {
		$line = $line . $char;
	}
	my $unhex = $str1 ^ $line;
	print "Answer: $unhex \n";
	print "=== \n";
}
