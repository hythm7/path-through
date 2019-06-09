unit module Path::Through;

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
