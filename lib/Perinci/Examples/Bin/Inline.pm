package Perinci::Examples::Bin::Inline;

# DATE
# VERSION

our %SPEC;

$SPEC{noop} = {
    v => 1.1,
    summary => 'Do nothing',
};

sub noop { [200] }

1;
# ABSTRACT: Sample Perinci::CmdLine::Inline-generated CLI scripts

=head1 DESCRIPTION

# INSERT_EXECS_LIST


=head1 SEE ALSO

L<Perinci::CmdLine::Inline>

=cut
