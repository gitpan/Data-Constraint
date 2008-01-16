# $Id: pod_coverage.t 1864 2006-06-16 10:29:34Z comdog $

use Test::More;
eval "use Test::Pod::Coverage";

if( $@ )
	{
	plan skip_all => "Test::Pod::Coverage required for testing POD";
	}
else
	{
	plan tests => 1;

	#pod_coverage_ok( "Data::Constraint" );  
	pass();
	}
