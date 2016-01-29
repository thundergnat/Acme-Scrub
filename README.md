## NAME

Acme::Scrub


## SYNOPSIS

Are your files a mess? Have some nasty code you keep meaning to refactor but
just can't find the time? Tired of looking at all those impenetrable Unicode
operators? Help has arrived!

In the spirit of Perl5's Acme::Bleach;

Acme::Scrub, a quick and easy way to clean up ugly code.

## USAGE

At or near the top of your file, include the line:


    use Acme::Scrub;


The first time you run a script that uses Acme::Scrub, the line will be
changed to:


    use Acme::Scrub; # for extra clean code.


and all the unsightly code below that line will be cleaned up, but will still
work the same way.


## WARNINGS, CAVEATS, & QUID PRO QUOS

This modifies and overwrites the original file. It is highly recommended
to save backup copies BEFORE using Acme::Scrub. It is possible to recover
the original, but why would you want to?

Do not use Acme::Scrub for security. You will get only slightly less effective
security by putting a sticky note over your source code.

You can not have anything else on the line after

    use Acme::Scrub;

no spaces, no comments. Acme::Scrub will add it's own comment to the line.

## BUGS

Probably.

## AUTHOR

Stephen Schulze (often seen lurking on perlmonks.org and #perl6 IRC as
thundergnat)

## LICENSE

Licensed under The Artistic 2.0; see LICENSE.
