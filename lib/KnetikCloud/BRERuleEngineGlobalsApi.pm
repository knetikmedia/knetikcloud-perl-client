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
package KnetikCloud::BRERuleEngineGlobalsApi;

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
# create_bre_global
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
    __PACKAGE__->method_documentation->{ 'create_bre_global' } = { 
    	summary => 'Create a global definition',
        params => $params,
        returns => 'BreGlobalResource',
        };
}
# @return BreGlobalResource
#
sub create_bre_global {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/globals/definitions';

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
    my $auth_settings = [qw(OAuth2 )];

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
# delete_bre_global
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
    __PACKAGE__->method_documentation->{ 'delete_bre_global' } = { 
    	summary => 'Delete a global',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_bre_global {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_bre_global");
    }

    # parse inputs
    my $_resource_path = '/bre/globals/definitions/{id}';

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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_bre_global
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
    __PACKAGE__->method_documentation->{ 'get_bre_global' } = { 
    	summary => 'Get a single global definition',
        params => $params,
        returns => 'BreGlobalResource',
        };
}
# @return BreGlobalResource
#
sub get_bre_global {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_bre_global");
    }

    # parse inputs
    my $_resource_path = '/bre/globals/definitions/{id}';

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
    my $auth_settings = [qw(OAuth2 )];

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
# get_bre_globals
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
    __PACKAGE__->method_documentation->{ 'get_bre_globals' } = { 
    	summary => 'List global definitions',
        params => $params,
        returns => 'PageResourceBreGlobalResource',
        };
}
# @return PageResourceBreGlobalResource
#
sub get_bre_globals {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/globals/definitions';

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
    my $auth_settings = [qw(OAuth2 )];

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
# update_bre_global
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
    __PACKAGE__->method_documentation->{ 'update_bre_global' } = { 
    	summary => 'Update a global definition',
        params => $params,
        returns => 'BreGlobalResource',
        };
}
# @return BreGlobalResource
#
sub update_bre_global {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_bre_global");
    }

    # parse inputs
    my $_resource_path = '/bre/globals/definitions/{id}';

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
    my $auth_settings = [qw(OAuth2 )];

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

1;
