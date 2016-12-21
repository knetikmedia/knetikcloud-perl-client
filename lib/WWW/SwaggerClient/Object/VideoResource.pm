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
package WWW::SwaggerClient::Object::VideoResource;

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
                                  class => 'VideoResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'active' => {
    	datatype => 'boolean',
    	base_name => 'active',
    	description => 'Whether the video is available, based on various factors',
    	format => '',
    	read_only => '',
    		},
    'author' => {
    	datatype => 'SimpleReferenceResourcelong',
    	base_name => 'author',
    	description => 'The original artist of the media',
    	format => '',
    	read_only => '',
    		},
    'authored' => {
    	datatype => 'int',
    	base_name => 'authored',
    	description => 'The date the media was created as a unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'banned' => {
    	datatype => 'boolean',
    	base_name => 'banned',
    	description => 'Whether the video has been banned or not',
    	format => '',
    	read_only => '',
    		},
    'category' => {
    	datatype => 'SimpleReferenceResourcestring',
    	base_name => 'category',
    	description => 'The category of the video',
    	format => '',
    	read_only => '',
    		},
    'comments' => {
    	datatype => 'ARRAY[CommentResource]',
    	base_name => 'comments',
    	description => 'The comments of the video',
    	format => '',
    	read_only => '',
    		},
    'contributors' => {
    	datatype => 'ARRAY[ContributionResource]',
    	base_name => 'contributors',
    	description => 'Artists that contributed to the creation. See separate endpoint to add to list',
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
    'embed' => {
    	datatype => 'string',
    	base_name => 'embed',
    	description => 'The country of an embedable version',
    	format => '',
    	read_only => '',
    		},
    'extension' => {
    	datatype => 'string',
    	base_name => 'extension',
    	description => 'The file extension of the media file. 1-5 characters',
    	format => '',
    	read_only => '',
    		},
    'height' => {
    	datatype => 'int',
    	base_name => 'height',
    	description => 'The height of the video in px',
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
    'length' => {
    	datatype => 'int',
    	base_name => 'length',
    	description => 'The length of the video in seconds',
    	format => '',
    	read_only => '',
    		},
    'location' => {
    	datatype => 'string',
    	base_name => 'location',
    	description => 'The country of the media. Typically a url. Cannot be blank',
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
    'mime_type' => {
    	datatype => 'string',
    	base_name => 'mime_type',
    	description => 'The mime-type of the media',
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
    'priority' => {
    	datatype => 'int',
    	base_name => 'priority',
    	description => 'The sort order of the video. default: 100',
    	format => '',
    	read_only => '',
    		},
    'privacy' => {
    	datatype => 'string',
    	base_name => 'privacy',
    	description => 'The privacy setting. default: private',
    	format => '',
    	read_only => '',
    		},
    'published' => {
    	datatype => 'boolean',
    	base_name => 'published',
    	description => 'Whether the video has been made public. Default true',
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
    'size' => {
    	datatype => 'int',
    	base_name => 'size',
    	description => 'The size of the media. Minimum 0 if supplied',
    	format => '',
    	read_only => '',
    		},
    'tags' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'tags',
    	description => 'The tags for the video',
    	format => '',
    	read_only => '',
    		},
    'thumbnail' => {
    	datatype => 'string',
    	base_name => 'thumbnail',
    	description => 'The country of a thumbnail version. Typically a url',
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
    'uploader' => {
    	datatype => 'SimpleUserResource',
    	base_name => 'uploader',
    	description => 'The user the media was uploaded by. May be null for system uploaded media. May only be set to a user other than the current caller if VIDEOS_ADMIN permission. Null will mean the caller is the uploader unless the caller has VIDEOS_ADMIN permission, in which case it will be set to null',
    	format => '',
    	read_only => '',
    		},
    'views' => {
    	datatype => 'int',
    	base_name => 'views',
    	description => 'The view count of the video',
    	format => '',
    	read_only => '',
    		},
    'width' => {
    	datatype => 'int',
    	base_name => 'width',
    	description => 'The width of the video in px',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'active' => 'boolean',
    'author' => 'SimpleReferenceResourcelong',
    'authored' => 'int',
    'banned' => 'boolean',
    'category' => 'SimpleReferenceResourcestring',
    'comments' => 'ARRAY[CommentResource]',
    'contributors' => 'ARRAY[ContributionResource]',
    'created_date' => 'int',
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
    'tags' => 'ARRAY[string]',
    'thumbnail' => 'string',
    'updated_date' => 'int',
    'uploader' => 'SimpleUserResource',
    'views' => 'int',
    'width' => 'int'
} );

__PACKAGE__->attribute_map( {
    'active' => 'active',
    'author' => 'author',
    'authored' => 'authored',
    'banned' => 'banned',
    'category' => 'category',
    'comments' => 'comments',
    'contributors' => 'contributors',
    'created_date' => 'created_date',
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
    'updated_date' => 'updated_date',
    'uploader' => 'uploader',
    'views' => 'views',
    'width' => 'width'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;