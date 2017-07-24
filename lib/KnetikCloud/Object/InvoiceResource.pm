=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

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
package KnetikCloud::Object::InvoiceResource;

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

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

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
        my $_instance = eval "KnetikCloud::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'InvoiceResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'billing_address1' => {
    	datatype => 'string',
    	base_name => 'billing_address1',
    	description => 'Line one of the customer&#39;s billing address',
    	format => '',
    	read_only => '',
    		},
    'billing_address2' => {
    	datatype => 'string',
    	base_name => 'billing_address2',
    	description => 'Line two of the customer&#39;s billing address',
    	format => '',
    	read_only => '',
    		},
    'billing_city_name' => {
    	datatype => 'string',
    	base_name => 'billing_city_name',
    	description => 'The city for the customer&#39;s billing address',
    	format => '',
    	read_only => '',
    		},
    'billing_country_name' => {
    	datatype => 'string',
    	base_name => 'billing_country_name',
    	description => 'The country for the customer&#39;s billing address',
    	format => '',
    	read_only => '',
    		},
    'billing_full_name' => {
    	datatype => 'string',
    	base_name => 'billing_full_name',
    	description => 'The customer&#39;s name for the billing address',
    	format => '',
    	read_only => '',
    		},
    'billing_postal_code' => {
    	datatype => 'string',
    	base_name => 'billing_postal_code',
    	description => 'The postal code for the customer&#39;s billing address',
    	format => '',
    	read_only => '',
    		},
    'billing_state_name' => {
    	datatype => 'string',
    	base_name => 'billing_state_name',
    	description => 'The state for the customer&#39;s billing address',
    	format => '',
    	read_only => '',
    		},
    'cart_id' => {
    	datatype => 'string',
    	base_name => 'cart_id',
    	description => 'The guid of the cart this invoice came from',
    	format => '',
    	read_only => '',
    		},
    'created_date' => {
    	datatype => 'int',
    	base_name => 'created_date',
    	description => 'The date the invoice was created, unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'currency' => {
    	datatype => 'string',
    	base_name => 'currency',
    	description => 'The code for the currency invoice prices are in',
    	format => '',
    	read_only => '',
    		},
    'current_fulfillment_status' => {
    	datatype => 'string',
    	base_name => 'current_fulfillment_status',
    	description => 'The fulfillment status of the invoice',
    	format => '',
    	read_only => '',
    		},
    'current_payment_status' => {
    	datatype => 'string',
    	base_name => 'current_payment_status',
    	description => 'The payment status of the invoice',
    	format => '',
    	read_only => '',
    		},
    'discount' => {
    	datatype => 'double',
    	base_name => 'discount',
    	description => 'The amount of money saved through coupons',
    	format => '',
    	read_only => '',
    		},
    'email' => {
    	datatype => 'string',
    	base_name => 'email',
    	description => 'The customer&#39;s email address',
    	format => '',
    	read_only => '',
    		},
    'external_ref' => {
    	datatype => 'string',
    	base_name => 'external_ref',
    	description => 'An external reference to filter on',
    	format => '',
    	read_only => '',
    		},
    'fed_tax' => {
    	datatype => 'double',
    	base_name => 'fed_tax',
    	description => 'The amount of federal tax added',
    	format => '',
    	read_only => '',
    		},
    'grand_total' => {
    	datatype => 'double',
    	base_name => 'grand_total',
    	description => 'The final price of the invoice',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the invoice',
    	format => '',
    	read_only => '',
    		},
    'invoice_number' => {
    	datatype => 'string',
    	base_name => 'invoice_number',
    	description => 'A reference number for the invoice',
    	format => '',
    	read_only => '',
    		},
    'items' => {
    	datatype => 'ARRAY[InvoiceItemResource]',
    	base_name => 'items',
    	description => 'A list of items within the invoice',
    	format => '',
    	read_only => '',
    		},
    'name_prefix' => {
    	datatype => 'string',
    	base_name => 'name_prefix',
    	description => 'The customer&#39;s name prefix',
    	format => '',
    	read_only => '',
    		},
    'order_notes' => {
    	datatype => 'string',
    	base_name => 'order_notes',
    	description => 'Notes about the order',
    	format => '',
    	read_only => '',
    		},
    'parent_invoice_id' => {
    	datatype => 'int',
    	base_name => 'parent_invoice_id',
    	description => 'The id of an invoice this is a child of',
    	format => '',
    	read_only => '',
    		},
    'payment_method_id' => {
    	datatype => 'int',
    	base_name => 'payment_method_id',
    	description => 'The id of a saved payment method used to pay for the invoice',
    	format => '',
    	read_only => '',
    		},
    'phone' => {
    	datatype => 'string',
    	base_name => 'phone',
    	description => 'The customer&#39;s phone number',
    	format => '',
    	read_only => '',
    		},
    'phone_number' => {
    	datatype => 'string',
    	base_name => 'phone_number',
    	description => 'The customer&#39;s phone number',
    	format => '',
    	read_only => '',
    		},
    'shipping' => {
    	datatype => 'double',
    	base_name => 'shipping',
    	description => 'The shipping cost',
    	format => '',
    	read_only => '',
    		},
    'shipping_address1' => {
    	datatype => 'string',
    	base_name => 'shipping_address1',
    	description => 'Line one of the customer&#39;s shipping address',
    	format => '',
    	read_only => '',
    		},
    'shipping_address2' => {
    	datatype => 'string',
    	base_name => 'shipping_address2',
    	description => 'Line two of the customer&#39;s shipping address',
    	format => '',
    	read_only => '',
    		},
    'shipping_city_name' => {
    	datatype => 'string',
    	base_name => 'shipping_city_name',
    	description => 'The city for the customer&#39;s shipping address',
    	format => '',
    	read_only => '',
    		},
    'shipping_country_name' => {
    	datatype => 'string',
    	base_name => 'shipping_country_name',
    	description => 'The country for the customer&#39;s shipping address',
    	format => '',
    	read_only => '',
    		},
    'shipping_full_name' => {
    	datatype => 'string',
    	base_name => 'shipping_full_name',
    	description => 'The customer&#39;s name for the shipping address',
    	format => '',
    	read_only => '',
    		},
    'shipping_postal_code' => {
    	datatype => 'string',
    	base_name => 'shipping_postal_code',
    	description => 'The postal code for the customer&#39;s shipping address',
    	format => '',
    	read_only => '',
    		},
    'shipping_state_name' => {
    	datatype => 'string',
    	base_name => 'shipping_state_name',
    	description => 'The state for the customer&#39;s shipping address',
    	format => '',
    	read_only => '',
    		},
    'sort' => {
    	datatype => 'int',
    	base_name => 'sort',
    	description => 'A number to use in sorting items. default 500.',
    	format => '',
    	read_only => '',
    		},
    'state_tax' => {
    	datatype => 'double',
    	base_name => 'state_tax',
    	description => 'The amount of state tax added',
    	format => '',
    	read_only => '',
    		},
    'subtotal' => {
    	datatype => 'double',
    	base_name => 'subtotal',
    	description => 'The sum price of all items before shipping, coupons and tax',
    	format => '',
    	read_only => '',
    		},
    'updated_date' => {
    	datatype => 'int',
    	base_name => 'updated_date',
    	description => 'The date the invoice was last updated, unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'user' => {
    	datatype => 'SimpleUserResource',
    	base_name => 'user',
    	description => 'The owner of the invoice',
    	format => '',
    	read_only => '',
    		},
    'vendor_id' => {
    	datatype => 'int',
    	base_name => 'vendor_id',
    	description => 'The id of the vendor',
    	format => '',
    	read_only => '',
    		},
    'vendor_name' => {
    	datatype => 'string',
    	base_name => 'vendor_name',
    	description => 'The name of the invoice',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'billing_address1' => 'string',
    'billing_address2' => 'string',
    'billing_city_name' => 'string',
    'billing_country_name' => 'string',
    'billing_full_name' => 'string',
    'billing_postal_code' => 'string',
    'billing_state_name' => 'string',
    'cart_id' => 'string',
    'created_date' => 'int',
    'currency' => 'string',
    'current_fulfillment_status' => 'string',
    'current_payment_status' => 'string',
    'discount' => 'double',
    'email' => 'string',
    'external_ref' => 'string',
    'fed_tax' => 'double',
    'grand_total' => 'double',
    'id' => 'int',
    'invoice_number' => 'string',
    'items' => 'ARRAY[InvoiceItemResource]',
    'name_prefix' => 'string',
    'order_notes' => 'string',
    'parent_invoice_id' => 'int',
    'payment_method_id' => 'int',
    'phone' => 'string',
    'phone_number' => 'string',
    'shipping' => 'double',
    'shipping_address1' => 'string',
    'shipping_address2' => 'string',
    'shipping_city_name' => 'string',
    'shipping_country_name' => 'string',
    'shipping_full_name' => 'string',
    'shipping_postal_code' => 'string',
    'shipping_state_name' => 'string',
    'sort' => 'int',
    'state_tax' => 'double',
    'subtotal' => 'double',
    'updated_date' => 'int',
    'user' => 'SimpleUserResource',
    'vendor_id' => 'int',
    'vendor_name' => 'string'
} );

__PACKAGE__->attribute_map( {
    'billing_address1' => 'billing_address1',
    'billing_address2' => 'billing_address2',
    'billing_city_name' => 'billing_city_name',
    'billing_country_name' => 'billing_country_name',
    'billing_full_name' => 'billing_full_name',
    'billing_postal_code' => 'billing_postal_code',
    'billing_state_name' => 'billing_state_name',
    'cart_id' => 'cart_id',
    'created_date' => 'created_date',
    'currency' => 'currency',
    'current_fulfillment_status' => 'current_fulfillment_status',
    'current_payment_status' => 'current_payment_status',
    'discount' => 'discount',
    'email' => 'email',
    'external_ref' => 'external_ref',
    'fed_tax' => 'fed_tax',
    'grand_total' => 'grand_total',
    'id' => 'id',
    'invoice_number' => 'invoice_number',
    'items' => 'items',
    'name_prefix' => 'name_prefix',
    'order_notes' => 'order_notes',
    'parent_invoice_id' => 'parent_invoice_id',
    'payment_method_id' => 'payment_method_id',
    'phone' => 'phone',
    'phone_number' => 'phone_number',
    'shipping' => 'shipping',
    'shipping_address1' => 'shipping_address1',
    'shipping_address2' => 'shipping_address2',
    'shipping_city_name' => 'shipping_city_name',
    'shipping_country_name' => 'shipping_country_name',
    'shipping_full_name' => 'shipping_full_name',
    'shipping_postal_code' => 'shipping_postal_code',
    'shipping_state_name' => 'shipping_state_name',
    'sort' => 'sort',
    'state_tax' => 'state_tax',
    'subtotal' => 'subtotal',
    'updated_date' => 'updated_date',
    'user' => 'user',
    'vendor_id' => 'vendor_id',
    'vendor_name' => 'vendor_name'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
