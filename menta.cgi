#!/usr/bin/perl
BEGIN {
    unshift @INC, 'cgi-extlib-perl', 'lib', 'extlib', 'app/lib';
};
use MENTA;
# -- ここまではおまじない --

MENTA->run_menta(do 'config.pl');
