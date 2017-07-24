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
package KnetikCloud::Object::AudioGroupPropertyDefinitionResource;

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
                                  class => 'AudioGroupPropertyDefinitionResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'field_list' => {
    	datatype => 'PropertyFieldListResource',
    	base_name => 'field_list',
    	description => 'A list of the fields on both the property definition and property of this type',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The name of the property',
    	format => '',
    	read_only => '',
    		},
    'required' => {
    	datatype => 'boolean',
    	base_name => 'required',
    	description => 'Whether the property is required',
    	format => '',
    	read_only => '',
    		},
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => 'The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties.',
    	format => '',
    	read_only => '',
    		},
    'file_type' => {
    	datatype => 'string',
    	base_name => 'file_type',
    	description => 'If provided, a file type that the property must match',
    	format => '',
    	read_only => '',
    		},
    'max_count' => {
    	datatype => 'int',
    	base_name => 'max_count',
    	description => 'If provided, the maximum number of files in the group',
    	format => '',
    	read_only => '',
    		},
    'max_file_size' => {
    	datatype => 'int',
    	base_name => 'max_file_size',
    	description => 'If provided, the maximum allowed size per file in bytes',
    	format => '',
    	read_only => '',
    		},
    'min_count' => {
    	datatype => 'int',
    	base_name => 'min_count',
    	description => 'If provided, the minimum number of files in the group',
    	format => '',
    	read_only => '',
    		},
    'max_length' => {
    	datatype => 'int',
    	base_name => 'max_length',
    	description => 'If provided, the maximum length of the audio',
    	format => '',
    	read_only => '',
    		},
    'min_length' => {
    	datatype => 'int',
    	base_name => 'min_length',
    	description => 'If provided, the minimum length of the audio',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'field_list' => 'PropertyFieldListResource',
    'name' => 'string',
    'required' => 'boolean',
    'type' => 'string',
    'file_type' => 'string',
    'max_count' => 'int',
    'max_file_size' => 'int',
    'min_count' => 'int',
    'max_length' => 'int',
    'min_length' => 'int'
} );

__PACKAGE__->attribute_map( {
    'field_list' => 'field_list',
    'name' => 'name',
    'required' => 'required',
    'type' => 'type',
    'file_type' => 'file_type',
    'max_count' => 'max_count',
    'max_file_size' => 'max_file_size',
    'min_count' => 'min_count',
    'max_length' => 'max_length',
    'min_length' => 'min_length'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
