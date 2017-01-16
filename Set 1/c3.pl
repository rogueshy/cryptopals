use strict;
use warnings;
use MIME::Base64;
my $str2 = 'thefiveboXingwizardsjumpquickly'; #Pangram
my $i;
my $hex1= '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736';
my $h1_le = length ($hex1);

my $str1 = pack ("H*", $hex1);
my $s1_le = length ($str1);

my $str3 = "a";
for ($i = 1; $i < 34; $i++) {
	$str3 = $str3 . "a";
}
print $str3;

foreach my $char (split //, $str2) {
	print "=== \n";
	print "Character: $char \n";
	my $line = $char;
	for ($i = 1; $i < 34; $i++) {
		$line = $line . $char;
	}
	my $unhex = $str1 ^ $line;
	print "unhexed: $unhex \n";
	my $hex2 = unpack ("H*", $line);
	print "Hexed character: $hex2 \n";
	my $hex3 = $hex1 ^ $hex2;
	print "Line: $hex3 \n";
	print "=== \n";
}