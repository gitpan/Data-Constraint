# $Id: compile.t,v 1.2 2004/08/09 17:37:33 comdog Exp $

use Test::More tests => 1;

my $module = "Data::Constraint";

print "bail out! Script file is missing!" unless use_ok( $module );
