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
package KnetikCloud::Object::ClientResource;

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
                                  class => 'ClientResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'access_token_validity_seconds' => {
    	datatype => 'int',
    	base_name => 'access_token_validity_seconds',
    	description => 'The expiration time of an initial oauth token in seconds',
    	format => '',
    	read_only => '',
    		},
    'client_key' => {
    	datatype => 'string',
    	base_name => 'client_key',
    	description => 'The client_id field of the oauth token request',
    	format => '',
    	read_only => '',
    		},
    'grant_types' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'grant_types',
    	description => 'The oauth grant type as in: password (username/password auth), client_credentials (server-to-server, private clients), refresh_token (to allow clients to refresh their initial token), facebook, google, etc) See documentation for a complete list. use dedicated endpoint PUT /grant-types to edit this list',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'Generated unique ID for the client',
    	format => '',
    	read_only => '',
    		},
    'is_public' => {
    	datatype => 'boolean',
    	base_name => 'is_public',
    	description => 'Set to true if the client is public i.e the secret key can be secured',
    	format => '',
    	read_only => '',
    		},
    'locked' => {
    	datatype => 'boolean',
    	base_name => 'locked',
    	description => 'Used to flag system clients that are not meant to be tinkered with',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The friendly name of the client',
    	format => '',
    	read_only => '',
    		},
    'redirect_uris' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'redirect_uris',
    	description => 'A redirection URL to use when granting access to third-parties (seldomly used)',
    	format => '',
    	read_only => '',
    		},
    'refresh_token_validity_seconds' => {
    	datatype => 'int',
    	base_name => 'refresh_token_validity_seconds',
    	description => 'The expiration time of a refresh oauth token in seconds',
    	format => '',
    	read_only => '',
    		},
    'secret' => {
    	datatype => 'string',
    	base_name => 'secret',
    	description => 'The client-secret field of the oauth request when creating a private client',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'access_token_validity_seconds' => 'int',
    'client_key' => 'string',
    'grant_types' => 'ARRAY[string]',
    'id' => 'int',
    'is_public' => 'boolean',
    'locked' => 'boolean',
    'name' => 'string',
    'redirect_uris' => 'ARRAY[string]',
    'refresh_token_validity_seconds' => 'int',
    'secret' => 'string'
} );

__PACKAGE__->attribute_map( {
    'access_token_validity_seconds' => 'access_token_validity_seconds',
    'client_key' => 'client_key',
    'grant_types' => 'grant_types',
    'id' => 'id',
    'is_public' => 'is_public',
    'locked' => 'locked',
    'name' => 'name',
    'redirect_uris' => 'redirect_uris',
    'refresh_token_validity_seconds' => 'refresh_token_validity_seconds',
    'secret' => 'secret'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;