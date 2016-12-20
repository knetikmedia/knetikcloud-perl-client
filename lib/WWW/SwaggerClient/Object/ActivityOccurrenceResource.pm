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
package WWW::SwaggerClient::Object::ActivityOccurrenceResource;

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
                                  class => 'ActivityOccurrenceResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'activity_id' => {
    	datatype => 'int',
    	base_name => 'activity_id',
    	description => 'The id of the activity',
    	format => '',
    	read_only => '',
    		},
    'challenge_activity_id' => {
    	datatype => 'int',
    	base_name => 'challenge_activity_id',
    	description => 'The id of the challenge activity (as part of the event, required if eventId set)',
    	format => '',
    	read_only => '',
    		},
    'created_date' => {
    	datatype => 'int',
    	base_name => 'created_date',
    	description => 'The date this occurrence was created, unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'entitlement' => {
    	datatype => 'ActivityEntitlementResource',
    	base_name => 'entitlement',
    	description => 'The entitlement item required to enter the occurrence. Required if not part of an event. Must come from the set of entitlement items listed in the activity',
    	format => '',
    	read_only => '',
    		},
    'event_id' => {
    	datatype => 'int',
    	base_name => 'event_id',
    	description => 'The id of the event',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the activity occurrence',
    	format => '',
    	read_only => '',
    		},
    'reward_status' => {
    	datatype => 'string',
    	base_name => 'reward_status',
    	description => 'Indicate if the rewards have been given out already',
    	format => '',
    	read_only => '',
    		},
    'settings' => {
    	datatype => 'ARRAY[SelectedSettingResource]',
    	base_name => 'settings',
    	description => 'The list of settings and their options available for this activity. Should be null on create if and only if part of an event',
    	format => '',
    	read_only => '',
    		},
    'simulated' => {
    	datatype => 'boolean',
    	base_name => 'simulated',
    	description => 'Whether this occurrence will be played as a simulation.',
    	format => '',
    	read_only => '',
    		},
    'start_date' => {
    	datatype => 'int',
    	base_name => 'start_date',
    	description => 'The date this occurrence was started, unix timestamp in seconds. null if not yet started',
    	format => '',
    	read_only => '',
    		},
    'status' => {
    	datatype => 'string',
    	base_name => 'status',
    	description => 'The current status of the occurrence (default: OPEN)',
    	format => '',
    	read_only => '',
    		},
    'updated_date' => {
    	datatype => 'int',
    	base_name => 'updated_date',
    	description => 'The date this occurrence was last updated, unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'users' => {
    	datatype => 'ARRAY[ActivityUserResource]',
    	base_name => 'users',
    	description => 'The list of users playing in this occurrence. Can only be set directly with ACTIVITIES_ADMIN permission',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'activity_id' => 'int',
    'challenge_activity_id' => 'int',
    'created_date' => 'int',
    'entitlement' => 'ActivityEntitlementResource',
    'event_id' => 'int',
    'id' => 'int',
    'reward_status' => 'string',
    'settings' => 'ARRAY[SelectedSettingResource]',
    'simulated' => 'boolean',
    'start_date' => 'int',
    'status' => 'string',
    'updated_date' => 'int',
    'users' => 'ARRAY[ActivityUserResource]'
} );

__PACKAGE__->attribute_map( {
    'activity_id' => 'activity_id',
    'challenge_activity_id' => 'challenge_activity_id',
    'created_date' => 'created_date',
    'entitlement' => 'entitlement',
    'event_id' => 'event_id',
    'id' => 'id',
    'reward_status' => 'reward_status',
    'settings' => 'settings',
    'simulated' => 'simulated',
    'start_date' => 'start_date',
    'status' => 'status',
    'updated_date' => 'updated_date',
    'users' => 'users'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
