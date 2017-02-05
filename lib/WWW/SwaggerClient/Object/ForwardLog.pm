=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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
package WWW::SwaggerClient::Object::ForwardLog;

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

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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
                                  class => 'ForwardLog',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'end_date' => {
    	datatype => 'int',
    	base_name => 'end_date',
    	description => 'The end date of the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'error_msg' => {
    	datatype => 'string',
    	base_name => 'error_msg',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'http_status_code' => {
    	datatype => 'int',
    	base_name => 'http_status_code',
    	description => 'The http status code the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'The id of the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'payload' => {
    	datatype => 'object',
    	base_name => 'payload',
    	description => 'The payload of the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'response' => {
    	datatype => 'string',
    	base_name => 'response',
    	description => 'The response string of the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'retry_count' => {
    	datatype => 'int',
    	base_name => 'retry_count',
    	description => 'The retry count of the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'start_date' => {
    	datatype => 'int',
    	base_name => 'start_date',
    	description => 'The start date of the forward log entry',
    	format => '',
    	read_only => '',
    		},
    'url' => {
    	datatype => 'string',
    	base_name => 'url',
    	description => 'The endpoint url of the forward log entry',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'end_date' => 'int',
    'error_msg' => 'string',
    'http_status_code' => 'int',
    'id' => 'string',
    'payload' => 'object',
    'response' => 'string',
    'retry_count' => 'int',
    'start_date' => 'int',
    'url' => 'string'
} );

__PACKAGE__->attribute_map( {
    'end_date' => 'end_date',
    'error_msg' => 'error_msg',
    'http_status_code' => 'http_status_code',
    'id' => 'id',
    'payload' => 'payload',
    'response' => 'response',
    'retry_count' => 'retry_count',
    'start_date' => 'start_date',
    'url' => 'url'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
