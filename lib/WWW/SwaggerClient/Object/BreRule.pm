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
package WWW::SwaggerClient::Object::BreRule;

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
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'BreRule',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'actions' => {
    	datatype => 'ActionResource',
    	base_name => 'actions',
    	description => 'A list of actions to execute, and the mapping for their parameters, when the rule runs. Minimum 1',
    	format => '',
    	read_only => '',
    		},
    'condition' => {
    	datatype => 'PredicateOperation',
    	base_name => 'condition',
    	description => 'A condition expression that must be met in a given event for the rule to run. Empty to always run',
    	format => '',
    	read_only => '',
    		},
    'condition_text' => {
    	datatype => 'string',
    	base_name => 'condition_text',
    	description => 'The condition as a readable string. Filled in by the system from the condition',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => 'The human readable description of the rule',
    	format => '',
    	read_only => '',
    		},
    'enabled' => {
    	datatype => 'boolean',
    	base_name => 'enabled',
    	description => 'Whether the rule is enabled to run (in conjunction with dates). Default true',
    	format => '',
    	read_only => '',
    		},
    'end_date' => {
    	datatype => 'int',
    	base_name => 'end_date',
    	description => 'The date the rule ceases to take effect, or null if never. Unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'event_name' => {
    	datatype => 'string',
    	base_name => 'event_name',
    	description => 'The event name of the trigger this rule runs for. Affects which parameters are available',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'The id of the rule for later references. If left null a random guid will be generated. Must be unique. Cannot be changed',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The human readable name of the rule',
    	format => '',
    	read_only => '',
    		},
    'sort' => {
    	datatype => 'int',
    	base_name => 'sort',
    	description => 'Used to sort rules to control the order they run in. Larger numbered sort values run first.  Default 500',
    	format => '',
    	read_only => '',
    		},
    'start_date' => {
    	datatype => 'int',
    	base_name => 'start_date',
    	description => 'The date the rule begins to take effect, or null if always. Unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'system_rule' => {
    	datatype => 'boolean',
    	base_name => 'system_rule',
    	description => 'Whether the rule is a default part of the system. System rules cannot be edited or deleted, but may be disabled',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'actions' => 'ActionResource',
    'condition' => 'PredicateOperation',
    'condition_text' => 'string',
    'description' => 'string',
    'enabled' => 'boolean',
    'end_date' => 'int',
    'event_name' => 'string',
    'id' => 'string',
    'name' => 'string',
    'sort' => 'int',
    'start_date' => 'int',
    'system_rule' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'actions' => 'actions',
    'condition' => 'condition',
    'condition_text' => 'condition_text',
    'description' => 'description',
    'enabled' => 'enabled',
    'end_date' => 'end_date',
    'event_name' => 'event_name',
    'id' => 'id',
    'name' => 'name',
    'sort' => 'sort',
    'start_date' => 'start_date',
    'system_rule' => 'system_rule'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
