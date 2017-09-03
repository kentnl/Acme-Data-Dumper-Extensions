use strict;
use warnings;

sub MY::dist_basics {
    my ($self) = shift;

    my $manifest_frag = '$(PERLRUN) ./maint/mkmanifest';

    my $rval = ExtUtils::MM_Unix::dist_basics($self);
    $rval =~ s{^.*mkmanifest.*$}{\t$manifest_frag}m;

    return $rval;
}

$main::MM_Args{test}{TESTS} .= " xt/*.t";

1;
