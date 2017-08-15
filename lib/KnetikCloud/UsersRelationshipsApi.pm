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
package KnetikCloud::UsersRelationshipsApi;

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
# create_user_relationship
#
# Create a user relationship
# 
# @param UserRelationshipResource $relationship The new relationship (optional)
{
    my $params = {
    'relationship' => {
        data_type => 'UserRelationshipResource',
        description => 'The new relationship',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_user_relationship' } = { 
    	summary => 'Create a user relationship',
        params => $params,
        returns => 'UserRelationshipResource',
        };
}
# @return UserRelationshipResource
#
sub create_user_relationship {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/relationships';

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
    if ( exists $args{'relationship'}) {
        $_body_data = $args{'relationship'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserRelationshipResource', $response);
    return $_response_object;
}

#
# delete_user_relationship
#
# Delete a user relationship
# 
# @param int $id The id of the relationship (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the relationship',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_user_relationship' } = { 
    	summary => 'Delete a user relationship',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_user_relationship {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_user_relationship");
    }

    # parse inputs
    my $_resource_path = '/users/relationships/{id}';

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
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_user_relationship
#
# Get a user relationship
# 
# @param int $id The id of the relationship (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the relationship',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_relationship' } = { 
    	summary => 'Get a user relationship',
        params => $params,
        returns => 'UserRelationshipResource',
        };
}
# @return UserRelationshipResource
#
sub get_user_relationship {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_user_relationship");
    }

    # parse inputs
    my $_resource_path = '/users/relationships/{id}';

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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserRelationshipResource', $response);
    return $_response_object;
}

#
# get_user_relationships
#
# Get a list of user relationships
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
{
    my $params = {
    'size' => {
        data_type => 'int',
        description => 'The number of objects returned per page',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The number of the page returned',
        required => '0',
    },
    'order' => {
        data_type => 'string',
        description => 'A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_relationships' } = { 
    	summary => 'Get a list of user relationships',
        params => $params,
        returns => 'PageResourceUserRelationshipResource',
        };
}
# @return PageResourceUserRelationshipResource
#
sub get_user_relationships {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/relationships';

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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceUserRelationshipResource', $response);
    return $_response_object;
}

#
# update_user_relationship
#
# Update a user relationship
# 
# @param int $id The id of the relationship (required)
# @param UserRelationshipResource $relationship The new relationship (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the relationship',
        required => '1',
    },
    'relationship' => {
        data_type => 'UserRelationshipResource',
        description => 'The new relationship',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user_relationship' } = { 
    	summary => 'Update a user relationship',
        params => $params,
        returns => 'UserRelationshipResource',
        };
}
# @return UserRelationshipResource
#
sub update_user_relationship {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_user_relationship");
    }

    # parse inputs
    my $_resource_path = '/users/relationships/{id}';

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
    if ( exists $args{'relationship'}) {
        $_body_data = $args{'relationship'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserRelationshipResource', $response);
    return $_response_object;
}

1;
