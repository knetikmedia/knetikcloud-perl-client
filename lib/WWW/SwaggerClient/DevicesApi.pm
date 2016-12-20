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
package WWW::SwaggerClient::DevicesApi;

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
# create_device_using_post
#
# Create a device
# 
# @param DeviceResource $device device (required)
{
    my $params = {
    'device' => {
        data_type => 'DeviceResource',
        description => 'device',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_device_using_post' } = { 
    	summary => 'Create a device',
        params => $params,
        returns => 'DeviceResource',
        };
}
# @return DeviceResource
#
sub create_device_using_post {
    my ($self, %args) = @_;

    # verify the required parameter 'device' is set
    unless (exists $args{'device'}) {
      croak("Missing the required parameter 'device' when calling create_device_using_post");
    }

    # parse inputs
    my $_resource_path = '/devices';
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
    if ( exists $args{'device'}) {
        $_body_data = $args{'device'};
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
    my $_response_object = $self->{api_client}->deserialize('DeviceResource', $response);
    return $_response_object;
}

#
# delete_device_using_delete
#
# Delete a device
# 
# @param int $id id (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_device_using_delete' } = { 
    	summary => 'Delete a device',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_device_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_device_using_delete");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_device_using_get
#
# Get a single device
# 
# @param int $id id (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_device_using_get' } = { 
    	summary => 'Get a single device',
        params => $params,
        returns => 'DeviceResource',
        };
}
# @return DeviceResource
#
sub get_device_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_device_using_get");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('DeviceResource', $response);
    return $_response_object;
}

#
# get_devices_using_get
#
# List and search devices
# 
# @param string $filter_make Filter for devices with specified make (optional)
# @param string $filter_model Filter for devices with specified model (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_make' => {
        data_type => 'string',
        description => 'Filter for devices with specified make',
        required => '0',
    },
    'filter_model' => {
        data_type => 'string',
        description => 'Filter for devices with specified model',
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
    'order' => {
        data_type => 'string',
        description => 'A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_devices_using_get' } = { 
    	summary => 'List and search devices',
        params => $params,
        returns => 'PageDeviceResource',
        };
}
# @return PageDeviceResource
#
sub get_devices_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/devices';
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
    if ( exists $args{'filter_make'}) {
        $query_params->{'filter_make'} = $self->{api_client}->to_query_value($args{'filter_make'});
    }

    # query params
    if ( exists $args{'filter_model'}) {
        $query_params->{'filter_model'} = $self->{api_client}->to_query_value($args{'filter_model'});
    }

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'order'}) {
        $query_params->{'order'} = $self->{api_client}->to_query_value($args{'order'});
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
    my $_response_object = $self->{api_client}->deserialize('PageDeviceResource', $response);
    return $_response_object;
}

#
# update_device_using_put
#
# Update a device
# 
# @param DeviceResource $device device (required)
# @param int $id id (required)
{
    my $params = {
    'device' => {
        data_type => 'DeviceResource',
        description => 'device',
        required => '1',
    },
    'id' => {
        data_type => 'int',
        description => 'id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_device_using_put' } = { 
    	summary => 'Update a device',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_device_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'device' is set
    unless (exists $args{'device'}) {
      croak("Missing the required parameter 'device' when calling update_device_using_put");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_device_using_put");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}';
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
    if ( exists $args{'device'}) {
        $_body_data = $args{'device'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
