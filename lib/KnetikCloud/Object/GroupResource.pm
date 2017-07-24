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
package KnetikCloud::Object::GroupResource;

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
                                  class => 'GroupResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'additional_properties' => {
    	datatype => 'HASH[string,Property]',
    	base_name => 'additional_properties',
    	description => 'A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => 'A description of the group. Max 250 characters',
    	format => '',
    	read_only => '',
    		},
    'member_count' => {
    	datatype => 'int',
    	base_name => 'member_count',
    	description => 'The number of users in the group',
    	format => '',
    	read_only => '',
    		},
    'message_of_the_day' => {
    	datatype => 'string',
    	base_name => 'message_of_the_day',
    	description => 'A message of the day for members of the group',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The name of the group. Max 50 characters',
    	format => '',
    	read_only => '',
    		},
    'parent' => {
    	datatype => 'string',
    	base_name => 'parent',
    	description => 'The unique name of another group that this group is a subset of',
    	format => '',
    	read_only => '',
    		},
    'status' => {
    	datatype => 'string',
    	base_name => 'status',
    	description => 'The status which describes whether other users can freely join the group or not',
    	format => '',
    	read_only => '',
    		},
    'sub_member_count' => {
    	datatype => 'int',
    	base_name => 'sub_member_count',
    	description => 'The number of users in child groups',
    	format => '',
    	read_only => '',
    		},
    'template' => {
    	datatype => 'string',
    	base_name => 'template',
    	description => 'A group template this group is validated against. May be null and no validation of additional_properties will be done',
    	format => '',
    	read_only => '',
    		},
    'unique_name' => {
    	datatype => 'string',
    	base_name => 'unique_name',
    	description => 'Unique name used in url and references. Uppercase, lowercase, numbers and hyphens only. Max 50 characters. Cannot be altered once created',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'additional_properties' => 'HASH[string,Property]',
    'description' => 'string',
    'member_count' => 'int',
    'message_of_the_day' => 'string',
    'name' => 'string',
    'parent' => 'string',
    'status' => 'string',
    'sub_member_count' => 'int',
    'template' => 'string',
    'unique_name' => 'string'
} );

__PACKAGE__->attribute_map( {
    'additional_properties' => 'additional_properties',
    'description' => 'description',
    'member_count' => 'member_count',
    'message_of_the_day' => 'message_of_the_day',
    'name' => 'name',
    'parent' => 'parent',
    'status' => 'status',
    'sub_member_count' => 'sub_member_count',
    'template' => 'template',
    'unique_name' => 'unique_name'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
