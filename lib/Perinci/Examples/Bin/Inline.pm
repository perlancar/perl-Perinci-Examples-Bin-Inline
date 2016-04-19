package Perinci::Examples::Bin::Inline;

# DATE
# VERSION

our %SPEC;

$SPEC{noop} = {
    v => 1.1,
    summary => 'Do nothing',
};
sub noop { [200, "OK", ""] }

$SPEC{check_schema_simple} = {
    v => 1.1,
    summary => 'Test schema checking (simple types: int, str)',
    args => {
        arg1 => {
            req => 1,
            pos => 0,
            schema => ['int*', min=>0],
        },
        arg2 => {
            schema => ['str*', {
                min_len => 2,
                max_len => 8,
                match => '\A(?=[aeiou])(?=[^aeiou])',
            }],
        },
    },
};
sub check_schema_simple {
    my %args = @_;
    [200, "OK", \%args];
}

$SPEC{check_schema_date} = {
    v => 1.1,
    summary => 'Test schema checking (date type)',
    args => {
        arg1 => {
            req => 1,
            pos => 0,
            schema => ['date*'],
        },
    },
};
sub check_schema_date {
    my %args = @_;
    [200, "OK", \%args];
}

1;
# ABSTRACT: Sample Perinci::CmdLine::Inline-generated CLI scripts

=head1 DESCRIPTION

# INSERT_EXECS_LIST


=head1 SEE ALSO

L<Perinci::CmdLine::Inline>

=cut
