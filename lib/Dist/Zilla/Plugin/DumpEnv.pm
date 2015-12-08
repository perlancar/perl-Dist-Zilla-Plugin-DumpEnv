package Dist::Zilla::Plugin::DumpEnv;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Moose;
with (
    'Dist::Zilla::Role::BeforeBuild',
);

use namespace::autoclean;

sub before_build {
    my $self = shift;

    # $self->log(["ENV: %s", \%ENV]);

    # nicer output
    use Data::Dump; dd \%ENV;
}

__PACKAGE__->meta->make_immutable;
1;
# ABSTRACT: Dump %ENV in Before Build phase

=for Pod::Coverage .+

=head1 SYNOPSIS

In F<dist.ini>:

 [DumpEnv]


=head1 DESCRIPTION

=head1 SEE ALSO

=cut
