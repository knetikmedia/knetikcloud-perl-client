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
package WWW::SwaggerClient::BRERuleEngineGlobalsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_global_using_post
#
# Create a global definition
# 
# @param BreGlobalResource $bre_global_resource The BRE global resource object (optional)
{
    my $params = {
    'bre_global_resource' => {
        data_type => 'BreGlobalResource',
        description => 'The BRE global resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_global_using_post' } = { 
    	summary => 'Create a global definition',
        params => $params,
        returns => 'BreGlobalResource',
        };
}
# @return BreGlobalResource
#
sub create_global_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/globals/definitions';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
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
    # body params
    if ( exists $args{'bre_global_resource'}) {
        $_body_data = $args{'bre_global_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BreGlobalResource', $response);
    return $_response_object;
}

#
# delete_global_using_delete
#
# Delete a global
# 
# @param string $id The id of the global definition (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the global definition',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_global_using_delete' } = { 
    	summary => 'Delete a global',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_global_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_global_using_delete");
    }

    # parse inputs
    my $_resource_path = '/bre/globals/definitions/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_global_using_get
#
# Get a single global definition
# 
# @param string $id The id of the global definition (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the global definition',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_global_using_get' } = { 
    	summary => 'Get a single global definition',
        params => $params,
        returns => 'BreGlobalResource',
        };
}
# @return BreGlobalResource
#
sub get_global_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_global_using_get");
    }

    # parse inputs
    my $_resource_path = '/bre/globals/definitions/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BreGlobalResource', $response);
    return $_response_object;
}

#
# get_globals_using_get
#
# List global definitions
# 
# @param boolean $filter_system Filter for globals that are system globals when true, or not when false. Leave off for both mixed (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'filter_system' => {
        data_type => 'boolean',
        description => 'Filter for globals that are system globals when true, or not when false. Leave off for both mixed',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'The number of objects returned per page',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The number of the page returned, starting with 1',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_globals_using_get' } = { 
    	summary => 'List global definitions',
        params => $params,
        returns => 'PageResourceBreGlobalResource',
        };
}
# @return PageResourceBreGlobalResource
#
sub get_globals_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/globals/definitions';
    $_resource_path =~ s/{format}/json/; # default format to json

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

    # query params
    if ( exists $args{'filter_system'}) {
        $query_params->{'filter_system'} = $self->{api_client}->to_query_value($args{'filter_system'});
    }

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceBreGlobalResource', $response);
    return $_response_object;
}

#
# update_global_using_put
#
# Update a global definition
# 
# @param string $id The id of the global definition (required)
# @param BreGlobalResource $bre_global_resource The BRE global resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the global definition',
        required => '1',
    },
    'bre_global_resource' => {
        data_type => 'BreGlobalResource',
        description => 'The BRE global resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_global_using_put' } = { 
    	summary => 'Update a global definition',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_global_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_global_using_put");
    }

    # parse inputs
    my $_resource_path = '/bre/globals/definitions/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bre_global_resource'}) {
        $_body_data = $args{'bre_global_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
