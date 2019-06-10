use Test;
use Path::Through;

plan 5;

is 'b'.IO.&append('c/d'),      'b/c/d'.IO,   'append';
is 'b'.IO.&prepend('a'),       'a/b'.IO,     'prepend';
is 'a/b/c/d'.IO.&pop(:2parts), 'a/b'.IO,     'pop';
is 'a/b/c/d'.IO.&shift,        'b/c/d'.IO,   'pop';
is '/a/b/c/d'.IO.&shift,       'a/b/c/d'.IO, 'pop';


done-testing;
