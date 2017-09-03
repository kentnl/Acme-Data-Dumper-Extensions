use 5.006;    # our
use strict;
use warnings;

package Acme::Data::Dumper::Extensions;

our $VERSION = '0.001000';

# ABSTRACT: Experimental Enhancements to core Data::Dumper

# AUTHORITY


1;

=head1 NAME

Acme::Data::Dumper::Extensions - Experimental Enhancements to core Data::Dumper

=head1 SYNOPSIS

  use Data::Dumper;
  use Acme::Data::Dumper::Extensions qw/$new_with_defaults/;

  my $instance = Data::Dumper->$new_with_defaults({ });


=head1 DESCRIPTION

This is just a testing ground for things that I'm suggesting for Data::Dumper.

It will likely be terrible because bolting on features after-the-fact its also
pretty ugly.

But its just a prototype.
