#!/usr/bin/perl

use Data::Constraint;

$x=1;
$y=2;
$z=3;

$U=0;
$T=0;
$K=0;

$result_zero    = Data::Constraint::zero($U,$T,$K);
$result_nonzero = Data::Constraint::nonzero($x,$y,$z);

print "$result_zero ... $result_nonzero" , $/;
