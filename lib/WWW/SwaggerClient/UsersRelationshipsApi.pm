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
package WWW::SwaggerClient::UsersRelationshipsApi;

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
# add_relationship_using_post
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
    __PACKAGE__->method_documentation->{ 'add_relationship_using_post' } = { 
    	summary => 'Create a user relationship',
        params => $params,
        returns => 'UserRelationshipResource',
        };
}
# @return UserRelationshipResource
#
sub add_relationship_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/relationships';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $auth_settings = [qw(OAuth2 )];

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
# delete_relationship_using_delete
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
    __PACKAGE__->method_documentation->{ 'delete_relationship_using_delete' } = { 
    	summary => 'Delete a user relationship',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_relationship_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_relationship_using_delete");
    }

    # parse inputs
    my $_resource_path = '/users/relationships/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
# get_relationship_using_get
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
    __PACKAGE__->method_documentation->{ 'get_relationship_using_get' } = { 
    	summary => 'Get a user relationship',
        params => $params,
        returns => 'UserRelationshipResource',
        };
}
# @return UserRelationshipResource
#
sub get_relationship_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_relationship_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/relationships/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $_response_object = $self->{api_client}->deserialize('UserRelationshipResource', $response);
    return $_response_object;
}

#
# get_relationships_using_get
#
# Get a list of user relationships
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_relationships_using_get' } = { 
    	summary => 'Get a list of user relationships',
        params => $params,
        returns => 'PageUserRelationshipResource',
        };
}
# @return PageUserRelationshipResource
#
sub get_relationships_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/relationships';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

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
    my $_response_object = $self->{api_client}->deserialize('PageUserRelationshipResource', $response);
    return $_response_object;
}

#
# update_relationship_using_put
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
    __PACKAGE__->method_documentation->{ 'update_relationship_using_put' } = { 
    	summary => 'Update a user relationship',
        params => $params,
        returns => 'UserRelationshipResource',
        };
}
# @return UserRelationshipResource
#
sub update_relationship_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_relationship_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/relationships/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $auth_settings = [qw(OAuth2 )];

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
