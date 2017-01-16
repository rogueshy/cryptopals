use strict;
use warnings;
use MIME::Base64;

my $str1= '1c0111001f010100061a024b53535009181c';
my $str2 = '686974207468652062756c6c277320657965';

my $hex1 = pack ("H*", $str1);
my $hex2 = pack ("H*", $str2);

my $unhex = $hex1 ^ $hex2;
my $hex3 = unpack ("H*", $unhex);

print "plain text string: $unhex \n";
print "hex string: $hex3 \n";