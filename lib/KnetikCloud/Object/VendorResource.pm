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
package KnetikCloud::Object::VendorResource;

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
                                  class => 'VendorResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'active' => {
    	datatype => 'boolean',
    	base_name => 'active',
    	description => 'Whether the vendor is active.  Default &#x3D; true',
    	format => '',
    	read_only => '',
    		},
    'additional_properties' => {
    	datatype => 'HASH[string,Property]',
    	base_name => 'additional_properties',
    	description => 'A map of additional properties, keyed on the property name (private). Must match the names and types defined in the template for this user type, or be an extra not from the template',
    	format => '',
    	read_only => '',
    		},
    'create_date' => {
    	datatype => 'int',
    	base_name => 'create_date',
    	description => 'The date the vendor was added. Unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'description' => {
    	datatype => 'string',
    	base_name => 'description',
    	description => 'A description of the vendor',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the vendor',
    	format => '',
    	read_only => '',
    		},
    'image_url' => {
    	datatype => 'string',
    	base_name => 'image_url',
    	description => 'The url of an image for the vendor',
    	format => '',
    	read_only => '',
    		},
    'manual_approval' => {
    	datatype => 'boolean',
    	base_name => 'manual_approval',
    	description => 'Whether the vendor needs to manually approve invoices before they are paid.  A separate checkout flow is required in this case.  Default: false',
    	format => '',
    	read_only => '',
    		},
    'name' => {
    	datatype => 'string',
    	base_name => 'name',
    	description => 'The name of the vendor',
    	format => '',
    	read_only => '',
    		},
    'primary_contact_email' => {
    	datatype => 'string',
    	base_name => 'primary_contact_email',
    	description => 'The primary email address for the vendor',
    	format => '',
    	read_only => '',
    		},
    'primary_contact_name' => {
    	datatype => 'string',
    	base_name => 'primary_contact_name',
    	description => 'The name of the primary contact for the vendor',
    	format => '',
    	read_only => '',
    		},
    'primary_contact_phone' => {
    	datatype => 'string',
    	base_name => 'primary_contact_phone',
    	description => 'The primary phone number for the vendor',
    	format => '',
    	read_only => '',
    		},
    'sales_email' => {
    	datatype => 'string',
    	base_name => 'sales_email',
    	description => 'The email address for sale inquiries for the vendor',
    	format => '',
    	read_only => '',
    		},
    'support_email' => {
    	datatype => 'string',
    	base_name => 'support_email',
    	description => 'The email address for support inquiries for the vendor',
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
    'update_date' => {
    	datatype => 'int',
    	base_name => 'update_date',
    	description => 'The date the vendor was last updated. Unix timestamp in seconds',
    	format => '',
    	read_only => '',
    		},
    'url' => {
    	datatype => 'string',
    	base_name => 'url',
    	description => 'The url for the vendor&#39;s site',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'active' => 'boolean',
    'additional_properties' => 'HASH[string,Property]',
    'create_date' => 'int',
    'description' => 'string',
    'id' => 'int',
    'image_url' => 'string',
    'manual_approval' => 'boolean',
    'name' => 'string',
    'primary_contact_email' => 'string',
    'primary_contact_name' => 'string',
    'primary_contact_phone' => 'string',
    'sales_email' => 'string',
    'support_email' => 'string',
    'template' => 'string',
    'update_date' => 'int',
    'url' => 'string'
} );

__PACKAGE__->attribute_map( {
    'active' => 'active',
    'additional_properties' => 'additional_properties',
    'create_date' => 'create_date',
    'description' => 'description',
    'id' => 'id',
    'image_url' => 'image_url',
    'manual_approval' => 'manual_approval',
    'name' => 'name',
    'primary_contact_email' => 'primary_contact_email',
    'primary_contact_name' => 'primary_contact_name',
    'primary_contact_phone' => 'primary_contact_phone',
    'sales_email' => 'sales_email',
    'support_email' => 'support_email',
    'template' => 'template',
    'update_date' => 'update_date',
    'url' => 'url'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
