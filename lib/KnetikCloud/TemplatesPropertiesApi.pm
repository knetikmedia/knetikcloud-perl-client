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
package KnetikCloud::TemplatesPropertiesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use KnetikCloud::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'KnetikCloud::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = KnetikCloud::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# get_template_property_type
#
# Get details for a template property type
# 
# @param string $type type (required)
{
    my $params = {
    'type' => {
        data_type => 'string',
        description => 'type',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_template_property_type' } = { 
    	summary => 'Get details for a template property type',
        params => $params,
        returns => 'PropertyFieldListResource',
        };
}
# @return PropertyFieldListResource
#
sub get_template_property_type {
    my ($self, %args) = @_;

    # verify the required parameter 'type' is set
    unless (exists $args{'type'}) {
      croak("Missing the required parameter 'type' when calling get_template_property_type");
    }

    # parse inputs
    my $_resource_path = '/templates/properties/{type}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'type'}) {
        my $_base_variable = "{" . "type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PropertyFieldListResource', $response);
    return $_response_object;
}

#
# get_template_property_types
#
# List template property types
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_template_property_types' } = { 
    	summary => 'List template property types',
        params => $params,
        returns => 'ARRAY[PropertyFieldListResource]',
        };
}
# @return ARRAY[PropertyFieldListResource]
#
sub get_template_property_types {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/templates/properties';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[PropertyFieldListResource]', $response);
    return $_response_object;
}

1;
