use inc::Module::Install;
name 'MENTA';
all_from 'lib/MENTA.pm';

requires 'HTML::Split';
requires 'HTML::ExtractContent';

license 'perl';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
use_test_base;
auto_include;
WriteAll;
