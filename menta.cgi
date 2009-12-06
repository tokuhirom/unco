#!/usr/bin/perl
BEGIN {
    unshift @INC, 'cgi-extlib-perl/extlib/', 'lib', 'extlib', 'app/lib';
};
use MENTA;
# -- ここまではおまじない --

MENTA->run_menta(do 'config.pl');
