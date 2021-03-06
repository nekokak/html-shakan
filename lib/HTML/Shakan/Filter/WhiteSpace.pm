package HTML::Shakan::Filter::WhiteSpace;
use Any::Moose;
with 'HTML::Shakan::Role::Filter';

sub filter {
    my $self = shift;

    local $_ = shift;
    s/^\s+//;
    s/\s+$//;
    $_;
}

no Any::Moose;
__PACKAGE__->meta->make_immutable;

__END__

=head1 NAME

HTML::Shakan::Filter::WhiteSpace - remove white space

=head1 SYNOPSIS

    TextField(name => 'body', filters => [qw/WhiteSpace/])

=head1 DESCRIPTION

remove trailing white spaces.

=head1 AUTHORS

Tokuhiro Matsuno

