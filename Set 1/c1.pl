use strict;
use warnings;
use MIME::Base64;

my $str = '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d';
my $hex_val = pack ("H*", $str);
my $hex_str = unpack("H*", $hex_val);
my $b64_enc = encode_base64($hex_val);

print "Text string: $hex_val \n";
print "Hex string: $hex_str \n";
print "Base64 string: $b64_enc \n";