# $Id: compile.t 1294 2004-08-09 17:37:33Z comdog $

use Test::More tests => 1;

my $module = "Data::Constraint";

print "bail out! Script file is missing!" unless use_ok( $module );
