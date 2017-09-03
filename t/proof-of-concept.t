
use strict;
use warnings;

use Test::More 0.89;

plan tests => 3;

use Data::Dumper;
use Acme::Data::Dumper::Extensions qw/ $_new_with_defaults /;

local $Data::Dumper::Indent = 10;

my $bad_instance = Data::Dumper->new( [] );
my $instance = Data::Dumper->$_new_with_defaults();

is( $instance->Indent,     2,  "Indent not inherited from localisation" );
is( $bad_instance->Indent, 10, "Bad Indent inherited from localisation" );

$instance = Data::Dumper->$_new_with_defaults( { Indent => 4 } );

is( $instance->Indent, 4, "Indent passed from constructor" );

