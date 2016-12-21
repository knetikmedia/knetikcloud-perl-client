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
package WWW::SwaggerClient::AuthPermissionsApi;

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
# create_permission_using_post
#
# Create a new permission
# 
# @param PermissionResource $permission_resource The permission resource object (optional)
{
    my $params = {
    'permission_resource' => {
        data_type => 'PermissionResource',
        description => 'The permission resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_permission_using_post' } = { 
    	summary => 'Create a new permission',
        params => $params,
        returns => 'PermissionResource',
        };
}
# @return PermissionResource
#
sub create_permission_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/auth/permissions';
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
    if ( exists $args{'permission_resource'}) {
        $_body_data = $args{'permission_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('PermissionResource', $response);
    return $_response_object;
}

#
# delete_permission_using_delete
#
# Delete a permission
# 
# @param string $permission The permission value (required)
# @param boolean $force If true, removes permission assigned to roles (optional)
{
    my $params = {
    'permission' => {
        data_type => 'string',
        description => 'The permission value',
        required => '1',
    },
    'force' => {
        data_type => 'boolean',
        description => 'If true, removes permission assigned to roles',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_permission_using_delete' } = { 
    	summary => 'Delete a permission',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_permission_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'permission' is set
    unless (exists $args{'permission'}) {
      croak("Missing the required parameter 'permission' when calling delete_permission_using_delete");
    }

    # parse inputs
    my $_resource_path = '/auth/permissions/{permission}';
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

    # query params
    if ( exists $args{'force'}) {
        $query_params->{'force'} = $self->{api_client}->to_query_value($args{'force'});
    }

    # path params
    if ( exists $args{'permission'}) {
        my $_base_variable = "{" . "permission" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'permission'});
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
# get_permission_using_get
#
# Get a single permission
# 
# @param string $permission The permission value (required)
{
    my $params = {
    'permission' => {
        data_type => 'string',
        description => 'The permission value',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_permission_using_get' } = { 
    	summary => 'Get a single permission',
        params => $params,
        returns => 'PermissionResource',
        };
}
# @return PermissionResource
#
sub get_permission_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'permission' is set
    unless (exists $args{'permission'}) {
      croak("Missing the required parameter 'permission' when calling get_permission_using_get");
    }

    # parse inputs
    my $_resource_path = '/auth/permissions/{permission}';
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
    if ( exists $args{'permission'}) {
        my $_base_variable = "{" . "permission" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'permission'});
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
    my $_response_object = $self->{api_client}->deserialize('PermissionResource', $response);
    return $_response_object;
}

#
# get_permission_using_get1
#
# List and search permissions
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to permission:ASC)
{
    my $params = {
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
    __PACKAGE__->method_documentation->{ 'get_permission_using_get1' } = { 
    	summary => 'List and search permissions',
        params => $params,
        returns => 'PageResourcePermissionResource',
        };
}
# @return PageResourcePermissionResource
#
sub get_permission_using_get1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/auth/permissions';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourcePermissionResource', $response);
    return $_response_object;
}

#
# update_permission_using_put
#
# Update a permission
# 
# @param string $permission The permission value (required)
# @param PermissionResource $permission_resource The permission resource object (optional)
{
    my $params = {
    'permission' => {
        data_type => 'string',
        description => 'The permission value',
        required => '1',
    },
    'permission_resource' => {
        data_type => 'PermissionResource',
        description => 'The permission resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_permission_using_put' } = { 
    	summary => 'Update a permission',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_permission_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'permission' is set
    unless (exists $args{'permission'}) {
      croak("Missing the required parameter 'permission' when calling update_permission_using_put");
    }

    # parse inputs
    my $_resource_path = '/auth/permissions/{permission}';
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
    if ( exists $args{'permission'}) {
        my $_base_variable = "{" . "permission" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'permission'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'permission_resource'}) {
        $_body_data = $args{'permission_resource'};
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
