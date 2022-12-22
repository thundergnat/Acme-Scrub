unit module Acme::Scrub:ver<0.2.1>:auth<github:thundergnat>;

my @socks = '﻿​'.comb;
my %pants = @socks.pairs.invert;
my $suds  = ' for REALLY clean code.';

my $wash = $*PROGRAM-NAME.IO.slurp.subst( /(.*"use Acme::Scrub;") " #"?/, '' );
my $soak = $0;
$wash .= subst(/$suds.*$/, '');
if $wash ~~ /\w/ {
    my $soap = Buf.new($wash.encode('UTF-8'));
    $*PROGRAM-NAME.IO.spurt: [~] $soak, ' #',
      @socks[$soap[*]».fmt("%08b").join.comb].join, $suds;
} else {
    use MONKEY-SEE-NO-EVAL;
    EVAL Blob.new( map { :2(%pants{.comb}.join) },
    $wash.comb(8)).decode;
}


=begin pod

=head1 NAME

Acme::Scrub

=head1 DESCRIPTION

Are your Raku files a mess? Have some nasty code you keep meaning to refactor
but just can't find the time? Tired of looking at all those impenetrable Unicode
operators? Help has arrived!

In the spirit of Perl5's Acme::Bleach;

Acme::Scrub, a quick and easy way to clean up ugly code.

=head1 USAGE

At or near the top of your file, include the line:

=begin code :lang<raku>

use Acme::Scrub;

=end code

The first time you run a script that uses Acme::Scrub, the line will be
changed to:

=begin code :lang<raku>

use Acme::Scrub; # for REALLY clean code.

=end code

and all the unsightly code below that line will be cleaned up, but it will still
work the same way.

=head1 WARNINGS, CAVEATS, PROVISIOS & QUID PRO QUOS

This modifies and overwrites the original file. It is highly recommended
to save backup copies BEFORE using Acme::Scrub. It is possible to recover
the original code... but why would you want to?

Do not use Acme::Scrub for security. See above note. You will get only slightly
less effective security by putting a sticky note over your source code.

You can not have anything else on the line after

=begin code :lang<raku>

use Acme::Scrub;

=end code

no spaces, no comments. Acme::Scrub will add it's own comment to the line, and
it is somewhat fragile to manual edits. (Hey, if you wanted robust, why are you
using an Acme module?)

=head1 BUGS

Probably.

=head1 AUTHOR

Stephen Schulze otherwise known as thundergnat <thundergnat@comcast.net>

=head1 COPYRIGHT AND LICENSE

Copyright 2022 thundergnat

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
