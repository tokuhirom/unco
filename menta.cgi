#!/usr/bin/perl
BEGIN {
    unshift @INC, 'lib', 'extlib', 'app/lib';
};
use MENTA;
# -- ここまではおまじない --

MENTA->run_menta(do 'config.pl');
