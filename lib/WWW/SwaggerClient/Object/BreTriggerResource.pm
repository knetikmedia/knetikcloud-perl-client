=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
package WWW::SwaggerClient::Object::BreTriggerResource;

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

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
                                  class => 'BreTriggerResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'category' => {
    	datatype => 'string',
    	base_name => 'category',
    	description => 'The category this trigger belongs to. See endpoints for related asset information. All new triggers are in category &#39;custom&#39;',
    	format => '',
    	read_only => '',
    		},
    'event_name' => {
    	datatype => 'string',
    	base_name => 'event_name',
    	description => 'The unique name for the event. This serves as the unique identifier. Cannot be changed after creation',
    	format => '',
    	read_only => '',
    		},
    'parameters' => {
    	datatype => 'ARRAY[BreTriggerParameterDefinition]',
    	base_name => 'parameters',
    	description => 'A list af parameters that will be sent with the event when the trigger is fired. These must be included in the event and match the described types',
    	format => '',
    	read_only => '',
    		},
    'system_trigger' => {
    	datatype => 'boolean',
    	base_name => 'system_trigger',
    	description => 'Where this trigger came from. System triggers cannot be removed or updated',
    	format => '',
    	read_only => '',
    		},
    'trigger_description' => {
    	datatype => 'string',
    	base_name => 'trigger_description',
    	description => 'A description of the trigger',
    	format => '',
    	read_only => '',
    		},
    'trigger_name' => {
    	datatype => 'string',
    	base_name => 'trigger_name',
    	description => 'A human readable name for this trigger',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'category' => 'string',
    'event_name' => 'string',
    'parameters' => 'ARRAY[BreTriggerParameterDefinition]',
    'system_trigger' => 'boolean',
    'trigger_description' => 'string',
    'trigger_name' => 'string'
} );

__PACKAGE__->attribute_map( {
    'category' => 'category',
    'event_name' => 'event_name',
    'parameters' => 'parameters',
    'system_trigger' => 'system_trigger',
    'trigger_description' => 'trigger_description',
    'trigger_name' => 'trigger_name'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
