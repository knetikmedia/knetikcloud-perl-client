=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
package WWW::SwaggerClient::Object::TransactionResource;

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

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
                                  class => 'TransactionResource',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'create_date' => {
    	datatype => 'int',
    	base_name => 'create_date',
    	description => 'The unix timestamp in seconds of the transaction',
    	format => '',
    	read_only => '',
    		},
    'currency_code' => {
    	datatype => 'string',
    	base_name => 'currency_code',
    	description => 'The code of the currency for the transaction',
    	format => '',
    	read_only => '',
    		},
    'details' => {
    	datatype => 'string',
    	base_name => 'details',
    	description => 'The specific details of the transaction, such as a message from the admin that created it',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'int',
    	base_name => 'id',
    	description => 'The id of the transaction',
    	format => '',
    	read_only => '',
    		},
    'invoice_id' => {
    	datatype => 'int',
    	base_name => 'invoice_id',
    	description => 'The id of the invoice that spawned the transaction, if any',
    	format => '',
    	read_only => '',
    		},
    'is_refunded' => {
    	datatype => 'boolean',
    	base_name => 'is_refunded',
    	description => 'Whether the transaction has been refunded',
    	format => '',
    	read_only => '',
    		},
    'response' => {
    	datatype => 'string',
    	base_name => 'response',
    	description => 'The response',
    	format => '',
    	read_only => '',
    		},
    'source' => {
    	datatype => 'string',
    	base_name => 'source',
    	description => 'The root source of the transaction',
    	format => '',
    	read_only => '',
    		},
    'successful' => {
    	datatype => 'boolean',
    	base_name => 'successful',
    	description => 'If the transaction was successful',
    	format => '',
    	read_only => '',
    		},
    'transaction_id' => {
    	datatype => 'string',
    	base_name => 'transaction_id',
    	description => 'The payment gateway (external) transaction ID',
    	format => '',
    	read_only => '',
    		},
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => 'The general type of the transaction',
    	format => '',
    	read_only => '',
    		},
    'type_hint' => {
    	datatype => 'string',
    	base_name => 'type_hint',
    	description => 'The table name of the subclass',
    	format => '',
    	read_only => '',
    		},
    'value' => {
    	datatype => 'double',
    	base_name => 'value',
    	description => 'The amount of the transaction, positive if a gain, negative if an expenditure',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'create_date' => 'int',
    'currency_code' => 'string',
    'details' => 'string',
    'id' => 'int',
    'invoice_id' => 'int',
    'is_refunded' => 'boolean',
    'response' => 'string',
    'source' => 'string',
    'successful' => 'boolean',
    'transaction_id' => 'string',
    'type' => 'string',
    'type_hint' => 'string',
    'value' => 'double'
} );

__PACKAGE__->attribute_map( {
    'create_date' => 'create_date',
    'currency_code' => 'currency_code',
    'details' => 'details',
    'id' => 'id',
    'invoice_id' => 'invoice_id',
    'is_refunded' => 'is_refunded',
    'response' => 'response',
    'source' => 'source',
    'successful' => 'successful',
    'transaction_id' => 'transaction_id',
    'type' => 'type',
    'type_hint' => 'type_hint',
    'value' => 'value'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
