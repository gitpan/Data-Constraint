# $Id: check.t,v 1.1 2004/08/09 17:37:33 comdog Exp $

use Test::More tests => 27;

use Data::Constraint;

my $class = 'Data::Constraint';

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
{
my $constraint = $class->get_by_name( 'defined' );

object_ok( $constraint );

is( $constraint->check( undef ),  0, "undef is not defined" );
is( $constraint->check( '' ),     1, "empty string is defined" );
is( $constraint->check( ),        0, "'no arguments' is not defined" );
is( $constraint->check( 0 ),      1, "'0' is defined" );

is( $constraint->check( $class ), 1, "\$class is defined" );
}

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
{
my $constraint = $class->get_by_name( 'ordinal' );

object_ok( $constraint );

foreach my $ordinal ( 0 .. 3, 4_5_6, 0x56, 0777, 0b11 )
	{
	is( $constraint->check( $ordinal ), 1, 
		"Literal [$ordinal] is an ordinal" );
	}
	
foreach my $ordinal ( -3 .. -1, "dog", "cat" )
	{
	is( $constraint->check( $ordinal ), 0, 
		"Literal [$ordinal] is not an ordinal" );
	}
	
}

{
my $constraint = $class->get_by_name( 'test' );

object_ok( $constraint );

is( $constraint->check( 0 ), 1, "'test' constraint returns true" );
is( $constraint->check( 1 ), 1, "'test' constraint returns true" );
is( $constraint->check(   ), 1, "'test' constraint returns true" );
}


sub object_ok
	{
	isa_ok( $_[0], $class );
	can_ok( $_[0], qw(check) );
	}
	