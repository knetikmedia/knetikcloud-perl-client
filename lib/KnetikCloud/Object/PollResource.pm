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
package KnetikCloud::Object::PollResource;

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
                                  class => 'PollResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'active' => {
    	datatype => 'boolean',
    	base_name => 'active',
    	description => 'Whether the poll is active',
    	format => '',
    	read_only => '',
    		},
    'additional_properties' => {
    	datatype => 'HASH[string,Property]',
    	base_name => 'additional_properties',
    	description => 'A map of additional properties, keyed on the property name.  Must match the names and types defined in the template for this item type',
    	format => '',
    	read_only => '',
    		},
    'answers' => {
    	datatype => 'ARRAY[PollAnswerResource]',
    	base_name => 'answers',
    	description => 'The answers to the poll',
    	format => '',
    	read_only => '',
    		},
    'category' => {
    	datatype => 'NestedCategory',
    	base_name => 'category',
    	description => 'The category for the poll',
    	format => '',
    	read_only => '',
    		},
    'created_date' => {
    	datatype => 'int',
    	base_name => 'created_date',
    	description => 'The date/time this resource was created in seconds since unix epoch',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'The id of the poll',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'tags',
    	description => 'The tags for the poll',
    	format => '',
    	read_only => '',
    		},
    'template' => {
    	datatype => 'string',
    	base_name => 'template',
    	description => 'A poll template this poll is validated against (private). May be null and no validation of additional_properties will be done',
    	format => '',
    	read_only => '',
    		},
    'text' => {
    	datatype => 'string',
    	base_name => 'text',
    	description => 'The text of the poll',
    	format => '',
    	read_only => '',
    		},
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => 'The media type of the poll',
    	format => '',
    	read_only => '',
    		},
    'updated_date' => {
    	datatype => 'int',
    	base_name => 'updated_date',
    	description => 'The date/time this resource was last updated in seconds since unix epoch',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'active' => 'boolean',
    'additional_properties' => 'HASH[string,Property]',
    'answers' => 'ARRAY[PollAnswerResource]',
    'category' => 'NestedCategory',
    'created_date' => 'int',
    'id' => 'string',
    'tags' => 'ARRAY[string]',
    'template' => 'string',
    'text' => 'string',
    'type' => 'string',
    'updated_date' => 'int'
} );

__PACKAGE__->attribute_map( {
    'active' => 'active',
    'additional_properties' => 'additional_properties',
    'answers' => 'answers',
    'category' => 'category',
    'created_date' => 'created_date',
    'id' => 'id',
    'tags' => 'tags',
    'template' => 'template',
    'text' => 'text',
    'type' => 'type',
    'updated_date' => 'updated_date'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
