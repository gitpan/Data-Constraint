# $Id: pod.t,v 1.1.1.1 2004/08/08 19:04:30 comdog Exp $
use Test::More;
eval "use Test::Pod 1.00";
plan skip_all => "Test::Pod 1.00 required for testing POD" if $@;
all_pod_files_ok();
