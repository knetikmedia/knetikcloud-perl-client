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
package KnetikCloud::Object::SubscriptionResource;

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
                                  class => 'SubscriptionResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'additional_properties' => {
    	datatype => 'HASH[string,Property]',
    	base_name => 'additional_properties',
    	description => 'A map of item additional properties, keyed on the property name. Must match the names and types defined in the template for this item type.',
    	format => '',
    	read_only => '',
    		},
    'availability' => {
    	datatype => 'string',
    	base_name => 'availability',
    	description => 'Who can purchase this subscription',
    	format => '',
    	read_only => '',
    		},
    'category' => {
    	datatype => 'string',
    	base_name => 'category',
    	description => 'A category for filtering items',
    	format => '',
    	read_only => '',
    		},
    'consolidation_day_of_month' => {
    	datatype => 'int',
    	base_name => 'consolidation_day_of_month',
    	description => 'The day of the month 1..31 this subscription will renew',
    	format => '',
    	read_only => '',
    		},
    'created_date' => {
    	datatype => 'int',
    	base_name => 'created_date',
    	description => 'The date the item was created, unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'geo_country_list' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'geo_country_list',
    	description => 'A list of country iso3 codes to include in the blacklist/whitelist geo policy',
    	format => '',
    	read_only => '',
    		},
    'geo_policy_type' => {
    	datatype => 'string',
    	base_name => 'geo_policy_type',
    	description => 'Whether to use the geo_country_list as a black list or white list for item geographical availability',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the item',
    	format => '',
    	read_only => '',
    		},
    'long_description' => {
    	datatype => 'string',
    	base_name => 'long_description',
    	description => 'A long description of the subscription',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The name of the item',
    	format => '',
    	read_only => '',
    		},
    'plans' => {
    	datatype => 'ARRAY[SubscriptionPlanResource]',
    	base_name => 'plans',
    	description => 'The billing options for this subscription',
    	format => '',
    	read_only => '',
    		},
    'short_description' => {
    	datatype => 'string',
    	base_name => 'short_description',
    	description => 'A short description of the subscription.  Max 255 characters',
    	format => '',
    	read_only => '',
    		},
    'sort' => {
    	datatype => 'int',
    	base_name => 'sort',
    	description => 'A number to use in sorting items.  Default 500',
    	format => '',
    	read_only => '',
    		},
    'store_end' => {
    	datatype => 'int',
    	base_name => 'store_end',
    	description => 'Used to schedule removal from store.  Null means the subscription will never be removed',
    	format => '',
    	read_only => '',
    		},
    'store_start' => {
    	datatype => 'int',
    	base_name => 'store_start',
    	description => 'Used to schedule appearance in store.  Null means the subscription will appear now',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'tags',
    	description => 'List of tags used for filtering items',
    	format => '',
    	read_only => '',
    		},
    'template' => {
    	datatype => 'string',
    	base_name => 'template',
    	description => 'An item template this item is validated against. May be null and no validation of additional properties will be done.',
    	format => '',
    	read_only => '',
    		},
    'unique_key' => {
    	datatype => 'string',
    	base_name => 'unique_key',
    	description => 'The unique key for the item',
    	format => '',
    	read_only => '',
    		},
    'updated_date' => {
    	datatype => 'int',
    	base_name => 'updated_date',
    	description => 'The date the item was last updated',
    	format => '',
    	read_only => '',
    		},
    'vendor_id' => {
    	datatype => 'int',
    	base_name => 'vendor_id',
    	description => 'The vendor who provides the item',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'additional_properties' => 'HASH[string,Property]',
    'availability' => 'string',
    'category' => 'string',
    'consolidation_day_of_month' => 'int',
    'created_date' => 'int',
    'geo_country_list' => 'ARRAY[string]',
    'geo_policy_type' => 'string',
    'id' => 'int',
    'long_description' => 'string',
    'name' => 'string',
    'plans' => 'ARRAY[SubscriptionPlanResource]',
    'short_description' => 'string',
    'sort' => 'int',
    'store_end' => 'int',
    'store_start' => 'int',
    'tags' => 'ARRAY[string]',
    'template' => 'string',
    'unique_key' => 'string',
    'updated_date' => 'int',
    'vendor_id' => 'int'
} );

__PACKAGE__->attribute_map( {
    'additional_properties' => 'additional_properties',
    'availability' => 'availability',
    'category' => 'category',
    'consolidation_day_of_month' => 'consolidation_day_of_month',
    'created_date' => 'created_date',
    'geo_country_list' => 'geo_country_list',
    'geo_policy_type' => 'geo_policy_type',
    'id' => 'id',
    'long_description' => 'long_description',
    'name' => 'name',
    'plans' => 'plans',
    'short_description' => 'short_description',
    'sort' => 'sort',
    'store_end' => 'store_end',
    'store_start' => 'store_start',
    'tags' => 'tags',
    'template' => 'template',
    'unique_key' => 'unique_key',
    'updated_date' => 'updated_date',
    'vendor_id' => 'vendor_id'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
