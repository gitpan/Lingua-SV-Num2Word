use Test;

BEGIN { plan tests => 11 };

use Lingua::SV::Num2Word;

my $tests = {          7 => "sju",
                      42 => "fyrtiotvå",
	             123 => "etthundratjugotre",
	            4711 => "fyratusensjuhundraelva",
	           62144 => "sextiotvåtusenetthundrafyrtiofyra",
	          262144 => "tvåhundrasextiotvåtusenetthundrafyrtiofyra", 
	         1243385 => "ett miljoner tvåhundrafyrtiotretusentrehundraåttiofem",
	        31243385 => "trettioett miljoner tvåhundrafyrtiotretusentrehundraåttiofem",
	       531243385 => "femhundratrettioett miljoner tvåhundrafyrtiotretusentrehundraåttiofem",
              1000000000 => "", };

ok(1);

for (keys %$tests) {
    ok($tests->{$_} eq &Lingua::SV::Num2Word::num2sv_cardinal($_));
}



