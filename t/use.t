use Test;

BEGIN { plan tests => 11 };

use Lingua::SV::Num2Word;

my $tests = {          7 => "sju",
                      42 => "fyrtiotv�",
	             123 => "etthundratjugotre",
	            4711 => "fyratusensjuhundraelva",
	           62144 => "sextiotv�tusenetthundrafyrtiofyra",
	          262144 => "tv�hundrasextiotv�tusenetthundrafyrtiofyra", 
	         1243385 => "ett miljoner tv�hundrafyrtiotretusentrehundra�ttiofem",
	        31243385 => "trettioett miljoner tv�hundrafyrtiotretusentrehundra�ttiofem",
	       531243385 => "femhundratrettioett miljoner tv�hundrafyrtiotretusentrehundra�ttiofem",
              1000000000 => "", };

ok(1);

for (keys %$tests) {
    ok($tests->{$_} eq &Lingua::SV::Num2Word::num2sv_cardinal($_));
}



