=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::CartShippingAddressRequest;

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

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
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
                                  class => 'CartShippingAddressRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'city' => {
    	datatype => 'string',
    	base_name => 'city',
    	description => 'The city of the user',
    	format => '',
    	read_only => '',
    		},
    'country_code_iso3' => {
    	datatype => 'string',
    	base_name => 'country_code_iso3',
    	description => 'The country code of the user',
    	format => '',
    	read_only => '',
    		},
    'email' => {
    	datatype => 'string',
    	base_name => 'email',
    	description => 'The email of the user',
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
    'last_name' => {
    	datatype => 'string',
    	base_name => 'last_name',
    	description => 'The last name of the user',
    	format => '',
    	read_only => '',
    		},
    'name_prefix' => {
    	datatype => 'string',
    	base_name => 'name_prefix',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'order_notes' => {
    	datatype => 'string',
    	base_name => 'order_notes',
    	description => 'The order notes the user',
    	format => '',
    	read_only => '',
    		},
    'phone_number' => {
    	datatype => 'string',
    	base_name => 'phone_number',
    	description => 'The phone number of the user',
    	format => '',
    	read_only => '',
    		},
    'postal_state_code' => {
    	datatype => 'string',
    	base_name => 'postal_state_code',
    	description => 'The postal state code of the user',
    	format => '',
    	read_only => '',
    		},
    'shipping_address_line1' => {
    	datatype => 'string',
    	base_name => 'shipping_address_line1',
    	description => 'The shipping address of the user, first line',
    	format => '',
    	read_only => '',
    		},
    'shipping_address_line2' => {
    	datatype => 'string',
    	base_name => 'shipping_address_line2',
    	description => 'The shipping address of the user, second line',
    	format => '',
    	read_only => '',
    		},
    'zip' => {
    	datatype => 'string',
    	base_name => 'zip',
    	description => 'The zipcode of the user',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'city' => 'string',
    'country_code_iso3' => 'string',
    'email' => 'string',
    'first_name' => 'string',
    'last_name' => 'string',
    'name_prefix' => 'string',
    'order_notes' => 'string',
    'phone_number' => 'string',
    'postal_state_code' => 'string',
    'shipping_address_line1' => 'string',
    'shipping_address_line2' => 'string',
    'zip' => 'string'
} );

__PACKAGE__->attribute_map( {
    'city' => 'city',
    'country_code_iso3' => 'country_code_iso3',
    'email' => 'email',
    'first_name' => 'first_name',
    'last_name' => 'last_name',
    'name_prefix' => 'name_prefix',
    'order_notes' => 'order_notes',
    'phone_number' => 'phone_number',
    'postal_state_code' => 'postal_state_code',
    'shipping_address_line1' => 'shipping_address_line1',
    'shipping_address_line2' => 'shipping_address_line2',
    'zip' => 'zip'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
