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
package KnetikCloud::DevicesApi;

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
# add_device_users
#
# Add device users
# 
# @param ARRAY[SimpleUserResource] $user_resources userResources (required)
# @param int $id id (required)
{
    my $params = {
    'user_resources' => {
        data_type => 'ARRAY[SimpleUserResource]',
        description => 'userResources',
        required => '1',
    },
    'id' => {
        data_type => 'int',
        description => 'id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_device_users' } = { 
    	summary => 'Add device users',
        params => $params,
        returns => 'DeviceResource',
        };
}
# @return DeviceResource
#
sub add_device_users {
    my ($self, %args) = @_;

    # verify the required parameter 'user_resources' is set
    unless (exists $args{'user_resources'}) {
      croak("Missing the required parameter 'user_resources' when calling add_device_users");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling add_device_users");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}/users';

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

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'user_resources'}) {
        $_body_data = $args{'user_resources'};
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
# create_device
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
    __PACKAGE__->method_documentation->{ 'create_device' } = { 
    	summary => 'Create a device',
        params => $params,
        returns => 'DeviceResource',
        };
}
# @return DeviceResource
#
sub create_device {
    my ($self, %args) = @_;

    # verify the required parameter 'device' is set
    unless (exists $args{'device'}) {
      croak("Missing the required parameter 'device' when calling create_device");
    }

    # parse inputs
    my $_resource_path = '/devices';

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
# delete_device
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
    __PACKAGE__->method_documentation->{ 'delete_device' } = { 
    	summary => 'Delete a device',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_device {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_device");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}';

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
# delete_device_user
#
# Delete a device user
# 
# @param int $id The id of the device (required)
# @param int $user_id The user id of the device user (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the device',
        required => '1',
    },
    'user_id' => {
        data_type => 'int',
        description => 'The user id of the device user',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_device_user' } = { 
    	summary => 'Delete a device user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_device_user {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_device_user");
    }

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling delete_device_user");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}/users/{user_id}';

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

    # path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
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
# delete_device_users
#
# Delete all device users
# 
# @param int $id The id of the device (required)
# @param string $filter_id Filter for device users to delete with a user id in a given comma separated list of ids (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the device',
        required => '1',
    },
    'filter_id' => {
        data_type => 'string',
        description => 'Filter for device users to delete with a user id in a given comma separated list of ids',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_device_users' } = { 
    	summary => 'Delete all device users',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_device_users {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_device_users");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}/users';

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

    # query params
    if ( exists $args{'filter_id'}) {
        $query_params->{'filter_id'} = $self->{api_client}->to_query_value($args{'filter_id'});
    }

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
# get_device
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
    __PACKAGE__->method_documentation->{ 'get_device' } = { 
    	summary => 'Get a single device',
        params => $params,
        returns => 'DeviceResource',
        };
}
# @return DeviceResource
#
sub get_device {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_device");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}';

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
# get_devices
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
    __PACKAGE__->method_documentation->{ 'get_devices' } = { 
    	summary => 'List and search devices',
        params => $params,
        returns => 'PageResourceDeviceResource',
        };
}
# @return PageResourceDeviceResource
#
sub get_devices {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/devices';

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
    my $_response_object = $self->{api_client}->deserialize('PageResourceDeviceResource', $response);
    return $_response_object;
}

#
# update_device
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
    __PACKAGE__->method_documentation->{ 'update_device' } = { 
    	summary => 'Update a device',
        params => $params,
        returns => 'DeviceResource',
        };
}
# @return DeviceResource
#
sub update_device {
    my ($self, %args) = @_;

    # verify the required parameter 'device' is set
    unless (exists $args{'device'}) {
      croak("Missing the required parameter 'device' when calling update_device");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_device");
    }

    # parse inputs
    my $_resource_path = '/devices/{id}';

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
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('DeviceResource', $response);
    return $_response_object;
}

1;
