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
package WWW::SwaggerClient::Object::User;

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
                                  class => 'User',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'additional_properties' => {
    	datatype => 'HASH[string,Property]',
    	base_name => 'additional_properties',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'address' => {
    	datatype => 'string',
    	base_name => 'address',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'address2' => {
    	datatype => 'string',
    	base_name => 'address2',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'affiliate' => {
    	datatype => 'Affiliate',
    	base_name => 'affiliate',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'avatar_url' => {
    	datatype => 'string',
    	base_name => 'avatar_url',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'children' => {
    	datatype => 'ARRAY[UserRelationship]',
    	base_name => 'children',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'city' => {
    	datatype => 'string',
    	base_name => 'city',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'country' => {
    	datatype => 'Country',
    	base_name => 'country',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'currency' => {
    	datatype => 'Currency',
    	base_name => 'currency',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'date_created' => {
    	datatype => 'int',
    	base_name => 'date_created',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'date_of_birth' => {
    	datatype => 'int',
    	base_name => 'date_of_birth',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'date_updated' => {
    	datatype => 'int',
    	base_name => 'date_updated',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'display_name' => {
    	datatype => 'string',
    	base_name => 'display_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'email' => {
    	datatype => 'string',
    	base_name => 'email',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'first_name' => {
    	datatype => 'string',
    	base_name => 'first_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'fullname' => {
    	datatype => 'string',
    	base_name => 'fullname',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'gender' => {
    	datatype => 'string',
    	base_name => 'gender',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'groups' => {
    	datatype => 'ARRAY[GroupMember]',
    	base_name => 'groups',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'guest' => {
    	datatype => 'boolean',
    	base_name => 'guest',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'invite_token' => {
    	datatype => 'string',
    	base_name => 'invite_token',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'lang' => {
    	datatype => 'Language',
    	base_name => 'lang',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'last_activity' => {
    	datatype => 'int',
    	base_name => 'last_activity',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'last_login' => {
    	datatype => 'int',
    	base_name => 'last_login',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'last_name' => {
    	datatype => 'string',
    	base_name => 'last_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'lockout_attempts' => {
    	datatype => 'int',
    	base_name => 'lockout_attempts',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'lockout_date' => {
    	datatype => 'int',
    	base_name => 'lockout_date',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'mobile_number' => {
    	datatype => 'string',
    	base_name => 'mobile_number',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'old_id' => {
    	datatype => 'int',
    	base_name => 'old_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'parents' => {
    	datatype => 'ARRAY[UserRelationship]',
    	base_name => 'parents',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'password' => {
    	datatype => 'string',
    	base_name => 'password',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'postal_code' => {
    	datatype => 'string',
    	base_name => 'postal_code',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'properties_string' => {
    	datatype => 'string',
    	base_name => 'properties_string',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'roles' => {
    	datatype => 'ARRAY[Role]',
    	base_name => 'roles',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'state' => {
    	datatype => 'string',
    	base_name => 'state',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'status' => {
    	datatype => 'string',
    	base_name => 'status',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'tag_strings' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'tag_strings',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[UserTag]',
    	base_name => 'tags',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'template' => {
    	datatype => 'string',
    	base_name => 'template',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'timezone' => {
    	datatype => 'Timezone',
    	base_name => 'timezone',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'token' => {
    	datatype => 'string',
    	base_name => 'token',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'type_hint' => {
    	datatype => 'string',
    	base_name => 'type_hint',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'username' => {
    	datatype => 'string',
    	base_name => 'username',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'additional_properties' => 'HASH[string,Property]',
    'address' => 'string',
    'address2' => 'string',
    'affiliate' => 'Affiliate',
    'avatar_url' => 'string',
    'children' => 'ARRAY[UserRelationship]',
    'city' => 'string',
    'country' => 'Country',
    'currency' => 'Currency',
    'date_created' => 'int',
    'date_of_birth' => 'int',
    'date_updated' => 'int',
    'description' => 'string',
    'display_name' => 'string',
    'email' => 'string',
    'first_name' => 'string',
    'fullname' => 'string',
    'gender' => 'string',
    'groups' => 'ARRAY[GroupMember]',
    'guest' => 'boolean',
    'id' => 'int',
    'invite_token' => 'string',
    'lang' => 'Language',
    'last_activity' => 'int',
    'last_login' => 'int',
    'last_name' => 'string',
    'lockout_attempts' => 'int',
    'lockout_date' => 'int',
    'mobile_number' => 'string',
    'old_id' => 'int',
    'parents' => 'ARRAY[UserRelationship]',
    'password' => 'string',
    'postal_code' => 'string',
    'properties_string' => 'string',
    'roles' => 'ARRAY[Role]',
    'state' => 'string',
    'status' => 'string',
    'tag_strings' => 'ARRAY[string]',
    'tags' => 'ARRAY[UserTag]',
    'template' => 'string',
    'timezone' => 'Timezone',
    'token' => 'string',
    'type_hint' => 'string',
    'username' => 'string'
} );

__PACKAGE__->attribute_map( {
    'additional_properties' => 'additional_properties',
    'address' => 'address',
    'address2' => 'address2',
    'affiliate' => 'affiliate',
    'avatar_url' => 'avatar_url',
    'children' => 'children',
    'city' => 'city',
    'country' => 'country',
    'currency' => 'currency',
    'date_created' => 'date_created',
    'date_of_birth' => 'date_of_birth',
    'date_updated' => 'date_updated',
    'description' => 'description',
    'display_name' => 'display_name',
    'email' => 'email',
    'first_name' => 'first_name',
    'fullname' => 'fullname',
    'gender' => 'gender',
    'groups' => 'groups',
    'guest' => 'guest',
    'id' => 'id',
    'invite_token' => 'invite_token',
    'lang' => 'lang',
    'last_activity' => 'last_activity',
    'last_login' => 'last_login',
    'last_name' => 'last_name',
    'lockout_attempts' => 'lockout_attempts',
    'lockout_date' => 'lockout_date',
    'mobile_number' => 'mobile_number',
    'old_id' => 'old_id',
    'parents' => 'parents',
    'password' => 'password',
    'postal_code' => 'postal_code',
    'properties_string' => 'properties_string',
    'roles' => 'roles',
    'state' => 'state',
    'status' => 'status',
    'tag_strings' => 'tag_strings',
    'tags' => 'tags',
    'template' => 'template',
    'timezone' => 'timezone',
    'token' => 'token',
    'type_hint' => 'type_hint',
    'username' => 'username'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
