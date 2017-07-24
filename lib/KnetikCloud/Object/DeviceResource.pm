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
package KnetikCloud::Object::DeviceResource;

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
                                  class => 'DeviceResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'authorization' => {
    	datatype => 'string',
    	base_name => 'authorization',
    	description => 'The authorization code for the device',
    	format => '',
    	read_only => '',
    		},
    'condition' => {
    	datatype => 'string',
    	base_name => 'condition',
    	description => 'The current condition of the device (New, Defective, Reconditioned)',
    	format => '',
    	read_only => '',
    		},
    'created_date' => {
    	datatype => 'int',
    	base_name => 'created_date',
    	description => 'The date the device log was created',
    	format => '',
    	read_only => '',
    		},
    'data' => {
    	datatype => 'HASH[string,string]',
    	base_name => 'data',
    	description => 'The key/value pairs for extended data',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => 'The description of the device',
    	format => '',
    	read_only => '',
    		},
    'device_type' => {
    	datatype => 'string',
    	base_name => 'device_type',
    	description => 'The type of the device',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The unique ID for this device. Cannot be changed once created',
    	format => '',
    	read_only => '',
    		},
    'location' => {
    	datatype => 'string',
    	base_name => 'location',
    	description => 'The location of the device',
    	format => '',
    	read_only => '',
    		},
    'mac_address' => {
    	datatype => 'string',
    	base_name => 'mac_address',
    	description => 'The MAC (media access control) address of the device',
    	format => '',
    	read_only => '',
    		},
    'make' => {
    	datatype => 'string',
    	base_name => 'make',
    	description => 'The make of the device',
    	format => '',
    	read_only => '',
    		},
    'model' => {
    	datatype => 'string',
    	base_name => 'model',
    	description => 'The model of the device',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The name of the device',
    	format => '',
    	read_only => '',
    		},
    'os' => {
    	datatype => 'string',
    	base_name => 'os',
    	description => 'The OS (operating system) on the device',
    	format => '',
    	read_only => '',
    		},
    'serial' => {
    	datatype => 'string',
    	base_name => 'serial',
    	description => 'The serial number of the device',
    	format => '',
    	read_only => '',
    		},
    'status' => {
    	datatype => 'string',
    	base_name => 'status',
    	description => 'The current status the device (Active, Pending Active, Inactive, Repair',
    	format => '',
    	read_only => '',
    		},
    'updated_date' => {
    	datatype => 'int',
    	base_name => 'updated_date',
    	description => 'The date the device log was updated',
    	format => '',
    	read_only => '',
    		},
    'user' => {
    	datatype => 'SimpleUserResource',
    	base_name => 'user',
    	description => 'The user that owns the device',
    	format => '',
    	read_only => '',
    		},
    'users' => {
    	datatype => 'ARRAY[SimpleUserResource]',
    	base_name => 'users',
    	description => 'The users currently using the device',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'authorization' => 'string',
    'condition' => 'string',
    'created_date' => 'int',
    'data' => 'HASH[string,string]',
    'description' => 'string',
    'device_type' => 'string',
    'id' => 'int',
    'location' => 'string',
    'mac_address' => 'string',
    'make' => 'string',
    'model' => 'string',
    'name' => 'string',
    'os' => 'string',
    'serial' => 'string',
    'status' => 'string',
    'updated_date' => 'int',
    'user' => 'SimpleUserResource',
    'users' => 'ARRAY[SimpleUserResource]'
} );

__PACKAGE__->attribute_map( {
    'authorization' => 'authorization',
    'condition' => 'condition',
    'created_date' => 'created_date',
    'data' => 'data',
    'description' => 'description',
    'device_type' => 'device_type',
    'id' => 'id',
    'location' => 'location',
    'mac_address' => 'mac_address',
    'make' => 'make',
    'model' => 'model',
    'name' => 'name',
    'os' => 'os',
    'serial' => 'serial',
    'status' => 'status',
    'updated_date' => 'updated_date',
    'user' => 'user',
    'users' => 'users'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
