=begin comment

Knetik Platform API Documentation Latest

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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
package WWW::SwaggerClient::Object::Cart;

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

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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
                                  class => 'Cart',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'country_tax' => {
    	datatype => 'double',
    	base_name => 'country_tax',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'coupons' => {
    	datatype => 'ARRAY[CouponDefinition]',
    	base_name => 'coupons',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'created' => {
    	datatype => 'int',
    	base_name => 'created',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'currency_code' => {
    	datatype => 'string',
    	base_name => 'currency_code',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'discount_total' => {
    	datatype => 'double',
    	base_name => 'discount_total',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'error_code' => {
    	datatype => 'int',
    	base_name => 'error_code',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'error_message' => {
    	datatype => 'string',
    	base_name => 'error_message',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'grand_total' => {
    	datatype => 'double',
    	base_name => 'grand_total',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'invoice_id' => {
    	datatype => 'double',
    	base_name => 'invoice_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'items' => {
    	datatype => 'ARRAY[CartLineItem]',
    	base_name => 'items',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'owner' => {
    	datatype => 'int',
    	base_name => 'owner',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'selected_shipping_options' => {
    	datatype => 'ARRAY[CartShippingOption]',
    	base_name => 'selected_shipping_options',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'shippable' => {
    	datatype => 'boolean',
    	base_name => 'shippable',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'shipping_address' => {
    	datatype => 'CartShippingAddressRequest',
    	base_name => 'shipping_address',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'shipping_cost' => {
    	datatype => 'double',
    	base_name => 'shipping_cost',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'shipping_options' => {
    	datatype => 'HASH[string,Set]',
    	base_name => 'shipping_options',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'state_tax' => {
    	datatype => 'double',
    	base_name => 'state_tax',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'status' => {
    	datatype => 'string',
    	base_name => 'status',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'subtotal' => {
    	datatype => 'double',
    	base_name => 'subtotal',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'updated' => {
    	datatype => 'int',
    	base_name => 'updated',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'country_tax' => 'double',
    'coupons' => 'ARRAY[CouponDefinition]',
    'created' => 'int',
    'currency_code' => 'string',
    'discount_total' => 'double',
    'error_code' => 'int',
    'error_message' => 'string',
    'grand_total' => 'double',
    'id' => 'string',
    'invoice_id' => 'double',
    'items' => 'ARRAY[CartLineItem]',
    'owner' => 'int',
    'selected_shipping_options' => 'ARRAY[CartShippingOption]',
    'shippable' => 'boolean',
    'shipping_address' => 'CartShippingAddressRequest',
    'shipping_cost' => 'double',
    'shipping_options' => 'HASH[string,Set]',
    'state_tax' => 'double',
    'status' => 'string',
    'subtotal' => 'double',
    'updated' => 'int'
} );

__PACKAGE__->attribute_map( {
    'country_tax' => 'country_tax',
    'coupons' => 'coupons',
    'created' => 'created',
    'currency_code' => 'currency_code',
    'discount_total' => 'discount_total',
    'error_code' => 'error_code',
    'error_message' => 'error_message',
    'grand_total' => 'grand_total',
    'id' => 'id',
    'invoice_id' => 'invoice_id',
    'items' => 'items',
    'owner' => 'owner',
    'selected_shipping_options' => 'selected_shipping_options',
    'shippable' => 'shippable',
    'shipping_address' => 'shipping_address',
    'shipping_cost' => 'shipping_cost',
    'shipping_options' => 'shipping_options',
    'state_tax' => 'state_tax',
    'status' => 'status',
    'subtotal' => 'subtotal',
    'updated' => 'updated'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
