#-----------------------------------------------------------------------

=head1 NAME

Data::Constraint - Trying to bring definitional succintness to Perl

=cut

=head1 SYNOPSIS
    if (nonzero $value) { ; }
    if (zero $value) { ; }



if (nonzero(map { $PAGEMODE eq $_ } ('CONFIRM_OFFER', 'VIEW_DETAILS', 'Purchase Item', 'Confirm Counter Offer')) { handle_these_pagemodes() }

Possibly more time-consuming, but certainly more succint!

=cut



#-----------------------------------------------------------------------

package Data::Constraint;
#use strict;

#-----------------------------------------------------------------------

=head1 DESCRIPTION

This module is to make constraint checking of lists of values more concise.


=cut

#-----------------------------------------------------------------------

require Exporter;
use Carp;

#-----------------------------------------------------------------------
#	Public Global Variables
#-----------------------------------------------------------------------
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);
$VERSION   = '1.4';
@ISA       = qw(Exporter);
@EXPORT    = qw(zero nonzero any);

#-----------------------------------------------------------------------
#	Non-Private Global Variables
#-----------------------------------------------------------------------


#=======================================================================

sub zero
{
    foreach (@_) {
	return 0 if $_;
    }
    return 1;
}

sub nonzero
{
    foreach (@_) {
	return 0 unless $_;
    }
    return 1;
}


#-----------------------------------------------------------------------


=head1 KNOWN BUGS AND LIMITATIONS

none

=head1 SEE ALSO

REBOL (http://www.rebol.com)

=head1 AUTHOR

Terrence Brannon E<lt>princepawn@yahoo.comE<gt>

=head1 COPYRIGHT

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

#-----------------------------------------------------------------------

#=======================================================================
# initialization code
#=======================================================================


1;

