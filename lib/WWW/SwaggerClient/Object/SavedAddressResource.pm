=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::SavedAddressResource;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'SavedAddressResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'address1' => {
    	datatype => 'string',
    	base_name => 'address1',
    	description => 'The first line of the address',
    	format => '',
    	read_only => '',
    		},
    'address2' => {
    	datatype => 'string',
    	base_name => 'address2',
    	description => 'A second line of the address',
    	format => '',
    	read_only => '',
    		},
    'city' => {
    	datatype => 'string',
    	base_name => 'city',
    	description => 'The city',
    	format => '',
    	read_only => '',
    		},
    'country_code' => {
    	datatype => 'string',
    	base_name => 'country_code',
    	description => 'The iso3 code for the country',
    	format => '',
    	read_only => '',
    		},
    'default' => {
    	datatype => 'boolean',
    	base_name => 'default',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'first_name' => {
    	datatype => 'string',
    	base_name => 'first_name',
    	description => 'The first name of the user',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the address',
    	format => '',
    	read_only => '',
    		},
    'last_name' => {
    	datatype => 'string',
    	base_name => 'last_name',
    	description => 'The last name of the user',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The name of the address',
    	format => '',
    	read_only => '',
    		},
    'phone1' => {
    	datatype => 'string',
    	base_name => 'phone1',
    	description => 'The first phone number of the user',
    	format => '',
    	read_only => '',
    		},
    'phone2' => {
    	datatype => 'string',
    	base_name => 'phone2',
    	description => 'The second phone number of the user',
    	format => '',
    	read_only => '',
    		},
    'postal_code' => {
    	datatype => 'string',
    	base_name => 'postal_code',
    	description => 'The postal code',
    	format => '',
    	read_only => '',
    		},
    'state_code' => {
    	datatype => 'string',
    	base_name => 'state_code',
    	description => 'The code for the state. Required if the country has states/provinces/equivalent',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'address1' => 'string',
    'address2' => 'string',
    'city' => 'string',
    'country_code' => 'string',
    'default' => 'boolean',
    'first_name' => 'string',
    'id' => 'int',
    'last_name' => 'string',
    'name' => 'string',
    'phone1' => 'string',
    'phone2' => 'string',
    'postal_code' => 'string',
    'state_code' => 'string'
} );

__PACKAGE__->attribute_map( {
    'address1' => 'address1',
    'address2' => 'address2',
    'city' => 'city',
    'country_code' => 'country_code',
    'default' => 'default',
    'first_name' => 'first_name',
    'id' => 'id',
    'last_name' => 'last_name',
    'name' => 'name',
    'phone1' => 'phone1',
    'phone2' => 'phone2',
    'postal_code' => 'postal_code',
    'state_code' => 'state_code'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
