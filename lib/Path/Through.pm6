unit module Path::Through:ver<0.0.1>:auth<cpan:hythm>;

constant DIRSEP = '/';

multi sub append ( IO::Path:D $path, $append ) is export {

  $path.add: $append;

}

multi sub prepend ( IO::Path:D $path, $prepend ) is export {

  $prepend.IO.add: $path;

}

multi sub pop ( IO::Path:D $path, Int:D :$parts = 1 ) is export {

  my @part = $path.Str.split: DIRSEP;

  @part.pop for ^$parts;

  @part.join( DIRSEP ).IO;

}

multi sub shift ( IO::Path:D $path, Int:D :$parts = 1 ) is export {

  my @part = $path.Str.split: DIRSEP;

  @part.shift for ^$parts;

  @part.join( DIRSEP ).IO;

}



=begin pod

=head1 NAME

`Path::Through` - Provides `append`, `prepend`, `pop` and `shift` multis to `IO::Path` (Linux only)


=head1 SYNOPSIS

=begin code :lang<perl6>

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


=end code

=head1 AUTHOR

Haytham Elganiny <elganiny.haytham@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2019 Haytham Elganiny

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

