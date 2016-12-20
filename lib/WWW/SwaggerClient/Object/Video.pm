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
package WWW::SwaggerClient::Object::Video;

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
                                  class => 'Video',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'active' => {
    	datatype => 'boolean',
    	base_name => 'active',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'author' => {
    	datatype => 'Artist',
    	base_name => 'author',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'authored' => {
    	datatype => 'int',
    	base_name => 'authored',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'banned' => {
    	datatype => 'boolean',
    	base_name => 'banned',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'category_id' => {
    	datatype => 'string',
    	base_name => 'category_id',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'category_name' => {
    	datatype => 'string',
    	base_name => 'category_name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'contributors' => {
    	datatype => 'CollectionVideoContribution',
    	base_name => 'contributors',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'created' => {
    	datatype => 'int',
    	base_name => 'created',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'embed' => {
    	datatype => 'string',
    	base_name => 'embed',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'extension' => {
    	datatype => 'string',
    	base_name => 'extension',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'height' => {
    	datatype => 'int',
    	base_name => 'height',
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
    'length' => {
    	datatype => 'int',
    	base_name => 'length',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'location' => {
    	datatype => 'string',
    	base_name => 'location',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'long_description' => {
    	datatype => 'string',
    	base_name => 'long_description',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'mime_type' => {
    	datatype => 'string',
    	base_name => 'mime_type',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'priority' => {
    	datatype => 'int',
    	base_name => 'priority',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'privacy' => {
    	datatype => 'string',
    	base_name => 'privacy',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'published' => {
    	datatype => 'boolean',
    	base_name => 'published',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'short_description' => {
    	datatype => 'string',
    	base_name => 'short_description',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'size' => {
    	datatype => 'int',
    	base_name => 'size',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[VideoTag]',
    	base_name => 'tags',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'thumbnail' => {
    	datatype => 'string',
    	base_name => 'thumbnail',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'updated' => {
    	datatype => 'int',
    	base_name => 'updated',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'uploader' => {
    	datatype => 'User',
    	base_name => 'uploader',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'views' => {
    	datatype => 'int',
    	base_name => 'views',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'whitelist' => {
    	datatype => 'ARRAY[User]',
    	base_name => 'whitelist',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'width' => {
    	datatype => 'int',
    	base_name => 'width',
    	description => '',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'active' => 'boolean',
    'author' => 'Artist',
    'authored' => 'int',
    'banned' => 'boolean',
    'category_id' => 'string',
    'category_name' => 'string',
    'contributors' => 'CollectionVideoContribution',
    'created' => 'int',
    'embed' => 'string',
    'extension' => 'string',
    'height' => 'int',
    'id' => 'int',
    'length' => 'int',
    'location' => 'string',
    'long_description' => 'string',
    'mime_type' => 'string',
    'name' => 'string',
    'priority' => 'int',
    'privacy' => 'string',
    'published' => 'boolean',
    'short_description' => 'string',
    'size' => 'int',
    'tags' => 'ARRAY[VideoTag]',
    'thumbnail' => 'string',
    'updated' => 'int',
    'uploader' => 'User',
    'views' => 'int',
    'whitelist' => 'ARRAY[User]',
    'width' => 'int'
} );

__PACKAGE__->attribute_map( {
    'active' => 'active',
    'author' => 'author',
    'authored' => 'authored',
    'banned' => 'banned',
    'category_id' => 'category_id',
    'category_name' => 'category_name',
    'contributors' => 'contributors',
    'created' => 'created',
    'embed' => 'embed',
    'extension' => 'extension',
    'height' => 'height',
    'id' => 'id',
    'length' => 'length',
    'location' => 'location',
    'long_description' => 'long_description',
    'mime_type' => 'mime_type',
    'name' => 'name',
    'priority' => 'priority',
    'privacy' => 'privacy',
    'published' => 'published',
    'short_description' => 'short_description',
    'size' => 'size',
    'tags' => 'tags',
    'thumbnail' => 'thumbnail',
    'updated' => 'updated',
    'uploader' => 'uploader',
    'views' => 'views',
    'whitelist' => 'whitelist',
    'width' => 'width'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
