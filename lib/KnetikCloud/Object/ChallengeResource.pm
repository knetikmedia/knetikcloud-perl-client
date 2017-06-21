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
package KnetikCloud::Object::ChallengeResource;

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
                                  class => 'ChallengeResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'activities' => {
    	datatype => 'int',
    	base_name => 'activities',
    	description => 'The number of activities allowed to this challenge',
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
    'campaign_id' => {
    	datatype => 'int',
    	base_name => 'campaign_id',
    	description => 'The id of the campaign this challenge is a part of. The challenge must be tied to an active campaign before it will spawn events',
    	format => '',
    	read_only => '',
    		},
    'copy_of' => {
    	datatype => 'int',
    	base_name => 'copy_of',
    	description => 'The ID of the original challenge it was copied from',
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
    'end_date' => {
    	datatype => 'int',
    	base_name => 'end_date',
    	description => 'The end date of this challenge in seconds since epoch. required if part of a campaign',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The unique ID for that resource',
    	format => '',
    	read_only => '',
    		},
    'leaderboard_strategy' => {
    	datatype => 'string',
    	base_name => 'leaderboard_strategy',
    	description => 'The strategy for calculating the leaderboard. Defaults to highest score. Value MUST come from the list of available strategies from the Leaderboard Service.',
    	format => '',
    	read_only => '',
    		},
    'long_description' => {
    	datatype => 'string',
    	base_name => 'long_description',
    	description => 'The user friendly name of that resource. Defaults to blank string',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The user friendly name of that resource',
    	format => '',
    	read_only => '',
    		},
    'next_event_date' => {
    	datatype => 'int',
    	base_name => 'next_event_date',
    	description => 'The next date this challenge will be occur in seconds since epoch',
    	format => '',
    	read_only => '',
    		},
    'reward_lag_minutes' => {
    	datatype => 'int',
    	base_name => 'reward_lag_minutes',
    	description => 'The number of minutes minimum to wait at the end of this challenge before running rewards, to allow activities to complete',
    	format => '',
    	read_only => '',
    		},
    'reward_set' => {
    	datatype => 'RewardSetResource',
    	base_name => 'reward_set',
    	description => 'The rewards to give at the end of the challenge. When creating/updating only id is used. Reward set must be pre-existing',
    	format => '',
    	read_only => '',
    		},
    'schedule' => {
    	datatype => 'Schedule',
    	base_name => 'schedule',
    	description => 'The repeat schedule for the challenge',
    	format => '',
    	read_only => '',
    		},
    'short_description' => {
    	datatype => 'string',
    	base_name => 'short_description',
    	description => 'The user friendly name of that resource. Defaults to blank string',
    	format => '',
    	read_only => '',
    		},
    'start_date' => {
    	datatype => 'int',
    	base_name => 'start_date',
    	description => 'The start date of this challenge in seconds since epoch. required if part of a campaign',
    	format => '',
    	read_only => '',
    		},
    'template' => {
    	datatype => 'string',
    	base_name => 'template',
    	description => 'A challenge template this challenge is validated against (private). May be null and no validation of additional_properties will be done',
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
    'activities' => 'int',
    'additional_properties' => 'HASH[string,Property]',
    'campaign_id' => 'int',
    'copy_of' => 'int',
    'created_date' => 'int',
    'end_date' => 'int',
    'id' => 'int',
    'leaderboard_strategy' => 'string',
    'long_description' => 'string',
    'name' => 'string',
    'next_event_date' => 'int',
    'reward_lag_minutes' => 'int',
    'reward_set' => 'RewardSetResource',
    'schedule' => 'Schedule',
    'short_description' => 'string',
    'start_date' => 'int',
    'template' => 'string',
    'updated_date' => 'int'
} );

__PACKAGE__->attribute_map( {
    'activities' => 'activities',
    'additional_properties' => 'additional_properties',
    'campaign_id' => 'campaign_id',
    'copy_of' => 'copy_of',
    'created_date' => 'created_date',
    'end_date' => 'end_date',
    'id' => 'id',
    'leaderboard_strategy' => 'leaderboard_strategy',
    'long_description' => 'long_description',
    'name' => 'name',
    'next_event_date' => 'next_event_date',
    'reward_lag_minutes' => 'reward_lag_minutes',
    'reward_set' => 'reward_set',
    'schedule' => 'schedule',
    'short_description' => 'short_description',
    'start_date' => 'start_date',
    'template' => 'template',
    'updated_date' => 'updated_date'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
