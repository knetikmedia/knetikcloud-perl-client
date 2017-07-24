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
package KnetikCloud::Object::UserBaseResource;

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
                                  class => 'UserBaseResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'avatar_url' => {
    	datatype => 'string',
    	base_name => 'avatar_url',
    	description => 'The url of the user&#39;s avatar image',
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
    'fullname' => {
    	datatype => 'string',
    	base_name => 'fullname',
    	description => 'The user&#39;s full name (private)',
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
    'last_activity' => {
    	datatype => 'int',
    	base_name => 'last_activity',
    	description => 'The date the user last interacted with the API (private)',
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
    'username' => {
    	datatype => 'string',
    	base_name => 'username',
    	description => 'The login username for the user (private). May be set to match email if system does not require usernames separately.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'avatar_url' => 'string',
    'display_name' => 'string',
    'email' => 'string',
    'fullname' => 'string',
    'id' => 'int',
    'last_activity' => 'int',
    'last_updated' => 'int',
    'member_since' => 'int',
    'username' => 'string'
} );

__PACKAGE__->attribute_map( {
    'avatar_url' => 'avatar_url',
    'display_name' => 'display_name',
    'email' => 'email',
    'fullname' => 'fullname',
    'id' => 'id',
    'last_activity' => 'last_activity',
    'last_updated' => 'last_updated',
    'member_since' => 'member_since',
    'username' => 'username'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
