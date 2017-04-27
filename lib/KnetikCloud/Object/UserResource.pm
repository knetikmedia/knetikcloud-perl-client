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
package KnetikCloud::Object::UserResource;

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
                                  class => 'UserResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'additional_properties' => {
    	datatype => 'HASH[string,Property]',
    	base_name => 'additional_properties',
    	description => 'A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template',
    	format => '',
    	read_only => '',
    		},
    'address' => {
    	datatype => 'string',
    	base_name => 'address',
    	description => 'The first line of the user&#39;s address (private)',
    	format => '',
    	read_only => '',
    		},
    'address2' => {
    	datatype => 'string',
    	base_name => 'address2',
    	description => 'The second line of user&#39;s address (private)',
    	format => '',
    	read_only => '',
    		},
    'avatar_url' => {
    	datatype => 'string',
    	base_name => 'avatar_url',
    	description => 'The url of the user&#39;s avatar image',
    	format => '',
    	read_only => '',
    		},
    'children' => {
    	datatype => 'ARRAY[UserRelationshipReferenceResource]',
    	base_name => 'children',
    	description => 'Relationships where this user is the parent. Read-Only, manage through separate endpoints',
    	format => '',
    	read_only => '',
    		},
    'city' => {
    	datatype => 'string',
    	base_name => 'city',
    	description => 'The user&#39;s city (private)',
    	format => '',
    	read_only => '',
    		},
    'country_code' => {
    	datatype => 'string',
    	base_name => 'country_code',
    	description => 'The ISO3 code for the country from the user&#39;s address (private). Will be filled in based on GeoIP country at registration if not provided.',
    	format => '',
    	read_only => '',
    		},
    'currency_code' => {
    	datatype => 'string',
    	base_name => 'currency_code',
    	description => 'The code for the user&#39;s real money currency (private)',
    	format => '',
    	read_only => '',
    		},
    'date_of_birth' => {
    	datatype => 'int',
    	base_name => 'date_of_birth',
    	description => 'The user&#39;s date of birth (private) as a unix timestamp',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => 'The user&#39;s self description (private)',
    	format => '',
    	read_only => '',
    		},
    'display_name' => {
    	datatype => 'string',
    	base_name => 'display_name',
    	description => 'The chosen display name of the user, defaults to username if not present',
    	format => '',
    	read_only => '',
    		},
    'email' => {
    	datatype => 'string',
    	base_name => 'email',
    	description => 'The user&#39;s email address (private). May be required and/or unique depending on system configuration (both on by default). Must match standard email requirements if provided (RFC 2822)',
    	format => '',
    	read_only => '',
    		},
    'first_name' => {
    	datatype => 'string',
    	base_name => 'first_name',
    	description => 'The user&#39;s first name (private)',
    	format => '',
    	read_only => '',
    		},
    'fullname' => {
    	datatype => 'string',
    	base_name => 'fullname',
    	description => 'The user&#39;s full name (private)',
    	format => '',
    	read_only => '',
    		},
    'gender' => {
    	datatype => 'string',
    	base_name => 'gender',
    	description => 'The user&#39;s gender (private)',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the user',
    	format => '',
    	read_only => '',
    		},
    'language_code' => {
    	datatype => 'string',
    	base_name => 'language_code',
    	description => 'The ISO3 code for the user&#39;s currency (private)',
    	format => '',
    	read_only => '',
    		},
    'last_name' => {
    	datatype => 'string',
    	base_name => 'last_name',
    	description => 'The user&#39;s last name (private)',
    	format => '',
    	read_only => '',
    		},
    'last_updated' => {
    	datatype => 'int',
    	base_name => 'last_updated',
    	description => 'The date the user&#39;s info was last updated as a unix timestamp',
    	format => '',
    	read_only => '',
    		},
    'member_since' => {
    	datatype => 'int',
    	base_name => 'member_since',
    	description => 'The user&#39;s date of registration as a unix timestamp',
    	format => '',
    	read_only => '',
    		},
    'mobile_number' => {
    	datatype => 'string',
    	base_name => 'mobile_number',
    	description => 'The user&#39;s mobile phone number (private)',
    	format => '',
    	read_only => '',
    		},
    'parents' => {
    	datatype => 'ARRAY[UserRelationshipReferenceResource]',
    	base_name => 'parents',
    	description => 'Relationships where this user is the child. Read-Only, manage through separate endpoints',
    	format => '',
    	read_only => '',
    		},
    'password' => {
    	datatype => 'string',
    	base_name => 'password',
    	description => 'The plain text password for the new user account. Required for registration; ignored on profile update.  Use password specific endpoints for editing',
    	format => '',
    	read_only => '',
    		},
    'postal_code' => {
    	datatype => 'string',
    	base_name => 'postal_code',
    	description => 'The user&#39;s postal code (private)',
    	format => '',
    	read_only => '',
    		},
    'state' => {
    	datatype => 'string',
    	base_name => 'state',
    	description => 'The user&#39;s state (private)',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'tags',
    	description => 'Tags on the user. Can only be set by admin. Max length per tag is 64 characters',
    	format => '',
    	read_only => '',
    		},
    'template' => {
    	datatype => 'string',
    	base_name => 'template',
    	description => 'A user template this user is validated against (private). May be null and no validation of properties will be done',
    	format => '',
    	read_only => '',
    		},
    'timezone_code' => {
    	datatype => 'string',
    	base_name => 'timezone_code',
    	description => 'The code for the user&#39;s timezone (private)',
    	format => '',
    	read_only => '',
    		},
    'username' => {
    	datatype => 'string',
    	base_name => 'username',
    	description => 'The login username for the user (private). May be set to match email if system does not require usernames separately.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'additional_properties' => 'HASH[string,Property]',
    'address' => 'string',
    'address2' => 'string',
    'avatar_url' => 'string',
    'children' => 'ARRAY[UserRelationshipReferenceResource]',
    'city' => 'string',
    'country_code' => 'string',
    'currency_code' => 'string',
    'date_of_birth' => 'int',
    'description' => 'string',
    'display_name' => 'string',
    'email' => 'string',
    'first_name' => 'string',
    'fullname' => 'string',
    'gender' => 'string',
    'id' => 'int',
    'language_code' => 'string',
    'last_name' => 'string',
    'last_updated' => 'int',
    'member_since' => 'int',
    'mobile_number' => 'string',
    'parents' => 'ARRAY[UserRelationshipReferenceResource]',
    'password' => 'string',
    'postal_code' => 'string',
    'state' => 'string',
    'tags' => 'ARRAY[string]',
    'template' => 'string',
    'timezone_code' => 'string',
    'username' => 'string'
} );

__PACKAGE__->attribute_map( {
    'additional_properties' => 'additional_properties',
    'address' => 'address',
    'address2' => 'address2',
    'avatar_url' => 'avatar_url',
    'children' => 'children',
    'city' => 'city',
    'country_code' => 'country_code',
    'currency_code' => 'currency_code',
    'date_of_birth' => 'date_of_birth',
    'description' => 'description',
    'display_name' => 'display_name',
    'email' => 'email',
    'first_name' => 'first_name',
    'fullname' => 'fullname',
    'gender' => 'gender',
    'id' => 'id',
    'language_code' => 'language_code',
    'last_name' => 'last_name',
    'last_updated' => 'last_updated',
    'member_since' => 'member_since',
    'mobile_number' => 'mobile_number',
    'parents' => 'parents',
    'password' => 'password',
    'postal_code' => 'postal_code',
    'state' => 'state',
    'tags' => 'tags',
    'template' => 'template',
    'timezone_code' => 'timezone_code',
    'username' => 'username'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;