# $Id: description.t 1297 2004-08-09 18:08:24Z comdog $

use Test::More tests => 9;

use Data::Constraint;

my $class = 'Data::Constraint';

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
{
my $constraint = $class->get_by_name( 'defined' );

isa_ok( $constraint, $class );
can_ok( $constraint, qw(description) );

is( $constraint->description,  'True if the value is defined', 
	"description is correct" );

}

{
my $constraint = $class->get_by_name( 'test' );

isa_ok( $constraint, $class );
can_ok( $constraint, qw(description) );


is( $constraint->description,  "", 
	"description inheritance works" );
is( $constraint->check( 0 ), 1, "'test' constraint returns true" );
is( $constraint->check( 1 ), 1, "'test' constraint returns true" );
is( $constraint->check(   ), 1, "'test' constraint returns true" );
}