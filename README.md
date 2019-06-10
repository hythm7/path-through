NAME
====

`Path::Through` - Provides `append`, `prepend`, `pop` and `shift` multis to `IO::Path` (Linux only)

SYNOPSIS
========

```

use Path::Through;

my $path = '/b'.IO;
say $path;                     # "/b".IO

$path = append $path,'c/d';
say $path;                     # "/b/c/d".IO

$path = $path.&prepend: 'a';
say $path;                     # "a/b/c/d".IO

$path = $path.&pop: :2parts;
say $path;                     # "a/b".IO

$path = $path.&shift;
say $path;                     # "b".IO

```

DESCRIPTION
===========

Path::Through provides `append`, `prepend`, `pop` and `shift` to `IO::Path`


AUTHOR
======

Haytham Elganiny <elganiny.haytham@gmail.com>

COPYRIGHT AND LICENSE
=====================

Copyright 2019 Haytham Elganiny

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

