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
package KnetikCloud::Object::UserInventoryResource;

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
        my $_instance = eval "KnetikCloud::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'UserInventoryResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'behavior_data' => {
    	datatype => 'object',
    	base_name => 'behavior_data',
    	description => 'A map of data for behaviors',
    	format => '',
    	read_only => '',
    		},
    'created_date' => {
    	datatype => 'int',
    	base_name => 'created_date',
    	description => 'The date/time this resource was created in seconds since epoch',
    	format => '',
    	read_only => '',
    		},
    'expires' => {
    	datatype => 'int',
    	base_name => 'expires',
    	description => 'The date/time this resource exires in seconds since epoch. Null for no expiration. For subscriptions, this is the end of the &#39;grace period&#39; if left unpaid',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the inventory',
    	format => '',
    	read_only => '',
    		},
    'invoice_id' => {
    	datatype => 'int',
    	base_name => 'invoice_id',
    	description => 'The id of the invoice that resulted in this inventory, if any',
    	format => '',
    	read_only => '',
    		},
    'item_id' => {
    	datatype => 'int',
    	base_name => 'item_id',
    	description => 'The id of the item',
    	format => '',
    	read_only => '',
    		},
    'item_name' => {
    	datatype => 'string',
    	base_name => 'item_name',
    	description => 'The name of the item',
    	format => '',
    	read_only => '',
    		},
    'item_type_hint' => {
    	datatype => 'string',
    	base_name => 'item_type_hint',
    	description => 'The type hint of the item',
    	format => '',
    	read_only => '',
    		},
    'status' => {
    	datatype => 'string',
    	base_name => 'status',
    	description => 'The status of the inventory. Pending inventory is not yet ready for use. Inactive inventory has expired or been used up',
    	format => '',
    	read_only => '',
    		},
    'updated_date' => {
    	datatype => 'int',
    	base_name => 'updated_date',
    	description => 'The date/time this resource was last updated in seconds since epoch',
    	format => '',
    	read_only => '',
    		},
    'user' => {
    	datatype => 'SimpleUserResource',
    	base_name => 'user',
    	description => 'The id of the user this inventory belongs to',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'behavior_data' => 'object',
    'created_date' => 'int',
    'expires' => 'int',
    'id' => 'int',
    'invoice_id' => 'int',
    'item_id' => 'int',
    'item_name' => 'string',
    'item_type_hint' => 'string',
    'status' => 'string',
    'updated_date' => 'int',
    'user' => 'SimpleUserResource'
} );

__PACKAGE__->attribute_map( {
    'behavior_data' => 'behavior_data',
    'created_date' => 'created_date',
    'expires' => 'expires',
    'id' => 'id',
    'invoice_id' => 'invoice_id',
    'item_id' => 'item_id',
    'item_name' => 'item_name',
    'item_type_hint' => 'item_type_hint',
    'status' => 'status',
    'updated_date' => 'updated_date',
    'user' => 'user'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
