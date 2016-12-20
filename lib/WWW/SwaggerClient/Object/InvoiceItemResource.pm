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
package WWW::SwaggerClient::Object::InvoiceItemResource;

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
                                  class => 'InvoiceItemResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'affiliate_id' => {
    	datatype => 'int',
    	base_name => 'affiliate_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'bundle_sku' => {
    	datatype => 'string',
    	base_name => 'bundle_sku',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'current_fulfillment_status' => {
    	datatype => 'string',
    	base_name => 'current_fulfillment_status',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'invoice_id' => {
    	datatype => 'int',
    	base_name => 'invoice_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'item_id' => {
    	datatype => 'int',
    	base_name => 'item_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'item_name' => {
    	datatype => 'string',
    	base_name => 'item_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'original_total_price' => {
    	datatype => 'double',
    	base_name => 'original_total_price',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'original_unit_price' => {
    	datatype => 'double',
    	base_name => 'original_unit_price',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'qty' => {
    	datatype => 'int',
    	base_name => 'qty',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'sale_name' => {
    	datatype => 'string',
    	base_name => 'sale_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'sku' => {
    	datatype => 'string',
    	base_name => 'sku',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'sku_description' => {
    	datatype => 'string',
    	base_name => 'sku_description',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'system_price' => {
    	datatype => 'double',
    	base_name => 'system_price',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'total_price' => {
    	datatype => 'double',
    	base_name => 'total_price',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'type_hint' => {
    	datatype => 'string',
    	base_name => 'type_hint',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'unit_price' => {
    	datatype => 'double',
    	base_name => 'unit_price',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'affiliate_id' => 'int',
    'bundle_sku' => 'string',
    'current_fulfillment_status' => 'string',
    'id' => 'int',
    'invoice_id' => 'int',
    'item_id' => 'int',
    'item_name' => 'string',
    'original_total_price' => 'double',
    'original_unit_price' => 'double',
    'qty' => 'int',
    'sale_name' => 'string',
    'sku' => 'string',
    'sku_description' => 'string',
    'system_price' => 'double',
    'total_price' => 'double',
    'type_hint' => 'string',
    'unit_price' => 'double'
} );

__PACKAGE__->attribute_map( {
    'affiliate_id' => 'affiliate_id',
    'bundle_sku' => 'bundle_sku',
    'current_fulfillment_status' => 'current_fulfillment_status',
    'id' => 'id',
    'invoice_id' => 'invoice_id',
    'item_id' => 'item_id',
    'item_name' => 'item_name',
    'original_total_price' => 'original_total_price',
    'original_unit_price' => 'original_unit_price',
    'qty' => 'qty',
    'sale_name' => 'sale_name',
    'sku' => 'sku',
    'sku_description' => 'sku_description',
    'system_price' => 'system_price',
    'total_price' => 'total_price',
    'type_hint' => 'type_hint',
    'unit_price' => 'unit_price'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
