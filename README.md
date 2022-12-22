[![Actions Status](https://github.com/thundergnat/Acme-Scrub/actions/workflows/test.yml/badge.svg)](https://github.com/thundergnat/Acme-Scrub/actions)

NAME
====

Acme::Scrub

DESCRIPTION
===========

Are your Raku files a mess? Have some nasty code you keep meaning to refactor but just can't find the time? Tired of looking at all those impenetrable Unicode operators? Help has arrived!

In the spirit of Perl5's Acme::Bleach;

Acme::Scrub, a quick and easy way to clean up ugly code.

USAGE
=====

At or near the top of your file, include the line:

```raku
use Acme::Scrub;
```

The first time you run a script that uses Acme::Scrub, the line will be changed to:

```raku
use Acme::Scrub; # for REALLY clean code.
```

and all the unsightly code below that line will be cleaned up, but it will still work the same way.

WARNINGS, CAVEATS, PROVISIOS & QUID PRO QUOS
============================================

This modifies and overwrites the original file. It is highly recommended to save backup copies BEFORE using Acme::Scrub. It is possible to recover the original code... but why would you want to?

Do not use Acme::Scrub for security. See above note. You will get only slightly less effective security by putting a sticky note over your source code.

You can not have anything else on the line after

```raku
use Acme::Scrub;
```

no spaces, no comments. Acme::Scrub will add it's own comment to the line, and it is somewhat fragile to manual edits. (Hey, if you wanted robust, why are you using an Acme module?)

BUGS
====

Probably.

AUTHOR
======

Stephen Schulze otherwise known as thundergnat <thundergnat@comcast.net>

COPYRIGHT AND LICENSE
=====================

Copyright 2022 thundergnat

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

