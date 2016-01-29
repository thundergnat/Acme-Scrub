unit module Acme::Scrub:ver<0.1.0>:auth<github:thundergnat>;

my @wash = '﻿','​';
my %rinse = @wash.pairs.invert;
my $suds = ' for extra clean code.';

my $scour = $*PROGRAM-NAME.IO.slurp.subst( /(.*"use Acme::Scrub;") " #"?/, '' );
my $soak = $0;
$scour .= subst(/$suds$/, '');
if $scour ~~ /\w/ {
    my $soap = Buf.new($scour.encode('UTF-8'));
    $*PROGRAM-NAME.IO.spurt: [~] $soak, ' #',
      @wash[$soap.[*]».fmt("%08b").join.comb].join, $suds;
} else {
    use MONKEY-SEE-NO-EVAL;
    EVAL Blob.new( map { :2(%rinse{$_.comb}.join) },
    $scour.comb(/. ** 8/)).decode;
}
