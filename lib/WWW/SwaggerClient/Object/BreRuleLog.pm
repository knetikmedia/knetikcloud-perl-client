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
package WWW::SwaggerClient::Object::BreRuleLog;

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
                                  class => 'BreRuleLog',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'ran' => {
    	datatype => 'boolean',
    	base_name => 'ran',
    	description => 'Whether the rule ran',
    	format => '',
    	read_only => '',
    		},
    'reason' => {
    	datatype => 'string',
    	base_name => 'reason',
    	description => 'The reason for the rule',
    	format => '',
    	read_only => '',
    		},
    'rule_end_date' => {
    	datatype => 'int',
    	base_name => 'rule_end_date',
    	description => 'The end date of the rule in seconds',
    	format => '',
    	read_only => '',
    		},
    'rule_id' => {
    	datatype => 'string',
    	base_name => 'rule_id',
    	description => 'The id of the rule',
    	format => '',
    	read_only => '',
    		},
    'rule_name' => {
    	datatype => 'string',
    	base_name => 'rule_name',
    	description => 'The name of the rule',
    	format => '',
    	read_only => '',
    		},
    'rule_start_date' => {
    	datatype => 'int',
    	base_name => 'rule_start_date',
    	description => 'The start date of the rule in seconds',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'ran' => 'boolean',
    'reason' => 'string',
    'rule_end_date' => 'int',
    'rule_id' => 'string',
    'rule_name' => 'string',
    'rule_start_date' => 'int'
} );

__PACKAGE__->attribute_map( {
    'ran' => 'ran',
    'reason' => 'reason',
    'rule_end_date' => 'rule_end_date',
    'rule_id' => 'rule_id',
    'rule_name' => 'rule_name',
    'rule_start_date' => 'rule_start_date'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
