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
package WWW::SwaggerClient::UsersApi;

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
# add_tag_using_post1
#
# Add a tag to a user
# 
# @param int $user_id The id of the user (required)
# @param string $tag tag (required)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    'tag' => {
        data_type => 'string',
        description => 'tag',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_tag_using_post1' } = { 
    	summary => 'Add a tag to a user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub add_tag_using_post1 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling add_tag_using_post1");
    }

    # verify the required parameter 'tag' is set
    unless (exists $args{'tag'}) {
      croak("Missing the required parameter 'tag' when calling add_tag_using_post1");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/tags';
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

    # path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tag'}) {
        $_body_data = $args{'tag'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# create_user_template_using_post
#
# Create a user template
# 
# @param TemplateResource $user_template_resource The user template resource object (optional)
{
    my $params = {
    'user_template_resource' => {
        data_type => 'TemplateResource',
        description => 'The user template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_user_template_using_post' } = { 
    	summary => 'Create a user template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub create_user_template_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/templates';
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
    if ( exists $args{'user_template_resource'}) {
        $_body_data = $args{'user_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# delete_user_template_using_delete
#
# Delete a user template
# 
# @param string $id The id of the template (required)
# @param string $cascade The value needed to delete used templates (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'cascade' => {
        data_type => 'string',
        description => 'The value needed to delete used templates',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_user_template_using_delete' } = { 
    	summary => 'Delete a user template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_user_template_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_user_template_using_delete");
    }

    # parse inputs
    my $_resource_path = '/users/templates/{id}';
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
    if ( exists $args{'cascade'}) {
        $query_params->{'cascade'} = $self->{api_client}->to_query_value($args{'cascade'});
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
# do_password_reset_using_put
#
# Choose a new password after a reset
# 
# @param int $id The id of the user (required)
# @param NewPasswordRequest $new_password_request The new password request object (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    'new_password_request' => {
        data_type => 'NewPasswordRequest',
        description => 'The new password request object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'do_password_reset_using_put' } = { 
    	summary => 'Choose a new password after a reset',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub do_password_reset_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling do_password_reset_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/{id}/password-reset';
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
    if ( exists $args{'new_password_request'}) {
        $_body_data = $args{'new_password_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_tags_using_get3
#
# List tags for a user
# 
# @param int $user_id The id of the user (required)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_tags_using_get3' } = { 
    	summary => 'List tags for a user',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub get_tags_using_get3 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling get_tags_using_get3");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/tags';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[string]', $response);
    return $_response_object;
}

#
# get_user_template_using_get
#
# Get a single user template
# 
# @param string $id The id of the template (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_template_using_get' } = { 
    	summary => 'Get a single user template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub get_user_template_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_user_template_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/templates/{id}';
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# get_user_templates_using_get
#
# List and search user templates
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
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
    __PACKAGE__->method_documentation->{ 'get_user_templates_using_get' } = { 
    	summary => 'List and search user templates',
        params => $params,
        returns => 'PageTemplateResource',
        };
}
# @return PageTemplateResource
#
sub get_user_templates_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/templates';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageTemplateResource', $response);
    return $_response_object;
}

#
# get_user_using_get
#
# Get a single user
# 
# @param string $id The id of the user or &#39;me&#39; (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the user or &#39;me&#39;',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_using_get' } = { 
    	summary => 'Get a single user',
        params => $params,
        returns => 'UserResource',
        };
}
# @return UserResource
#
sub get_user_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_user_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/{id}';
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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserResource', $response);
    return $_response_object;
}

#
# get_users_using_get
#
# List and search users
# 
# @param string $filter_role Filter for users whose roles has the provided role (optional)
# @param string $filter_displayname Filter for users whose display name starts with provided string. (optional)
# @param string $filter_email Filter for users whose email starts with provided string. Requires USERS_ADMIN permission (optional)
# @param string $filter_firstname Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission (optional)
# @param string $filter_fullname Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission (optional)
# @param string $filter_lastname Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission (optional)
# @param string $filter_username Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission (optional)
# @param string $filter_tag Filter for users who have a given tag (optional)
# @param string $filter_group Filter for users in a given group, by unique name (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_role' => {
        data_type => 'string',
        description => 'Filter for users whose roles has the provided role',
        required => '0',
    },
    'filter_displayname' => {
        data_type => 'string',
        description => 'Filter for users whose display name starts with provided string.',
        required => '0',
    },
    'filter_email' => {
        data_type => 'string',
        description => 'Filter for users whose email starts with provided string. Requires USERS_ADMIN permission',
        required => '0',
    },
    'filter_firstname' => {
        data_type => 'string',
        description => 'Filter for users whose first name starts with provided string. Requires USERS_ADMIN permission',
        required => '0',
    },
    'filter_fullname' => {
        data_type => 'string',
        description => 'Filter for users whose full name starts with provided string. Requires USERS_ADMIN permission',
        required => '0',
    },
    'filter_lastname' => {
        data_type => 'string',
        description => 'Filter for users whose last name starts with provided string. Requires USERS_ADMIN permission',
        required => '0',
    },
    'filter_username' => {
        data_type => 'string',
        description => 'Filter for users whose username starts with the provided string. Requires USERS_ADMIN permission',
        required => '0',
    },
    'filter_tag' => {
        data_type => 'string',
        description => 'Filter for users who have a given tag',
        required => '0',
    },
    'filter_group' => {
        data_type => 'string',
        description => 'Filter for users in a given group, by unique name',
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
    __PACKAGE__->method_documentation->{ 'get_users_using_get' } = { 
    	summary => 'List and search users',
        params => $params,
        returns => 'PageUserBaseResource',
        };
}
# @return PageUserBaseResource
#
sub get_users_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users';
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
    if ( exists $args{'filter_role'}) {
        $query_params->{'filter_role'} = $self->{api_client}->to_query_value($args{'filter_role'});
    }

    # query params
    if ( exists $args{'filter_displayname'}) {
        $query_params->{'filter_displayname'} = $self->{api_client}->to_query_value($args{'filter_displayname'});
    }

    # query params
    if ( exists $args{'filter_email'}) {
        $query_params->{'filter_email'} = $self->{api_client}->to_query_value($args{'filter_email'});
    }

    # query params
    if ( exists $args{'filter_firstname'}) {
        $query_params->{'filter_firstname'} = $self->{api_client}->to_query_value($args{'filter_firstname'});
    }

    # query params
    if ( exists $args{'filter_fullname'}) {
        $query_params->{'filter_fullname'} = $self->{api_client}->to_query_value($args{'filter_fullname'});
    }

    # query params
    if ( exists $args{'filter_lastname'}) {
        $query_params->{'filter_lastname'} = $self->{api_client}->to_query_value($args{'filter_lastname'});
    }

    # query params
    if ( exists $args{'filter_username'}) {
        $query_params->{'filter_username'} = $self->{api_client}->to_query_value($args{'filter_username'});
    }

    # query params
    if ( exists $args{'filter_tag'}) {
        $query_params->{'filter_tag'} = $self->{api_client}->to_query_value($args{'filter_tag'});
    }

    # query params
    if ( exists $args{'filter_group'}) {
        $query_params->{'filter_group'} = $self->{api_client}->to_query_value($args{'filter_group'});
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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageUserBaseResource', $response);
    return $_response_object;
}

#
# initiate_password_reset_using_post
#
# Reset a user's password
# 
# @param int $id The id of the user (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'initiate_password_reset_using_post' } = { 
    	summary => 'Reset a user&#39;s password',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub initiate_password_reset_using_post {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling initiate_password_reset_using_post");
    }

    # parse inputs
    my $_resource_path = '/users/{id}/password-reset';
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
# register_user_using_post
#
# Register a new user
# 
# @param UserResource $user_resource The user resource object (optional)
{
    my $params = {
    'user_resource' => {
        data_type => 'UserResource',
        description => 'The user resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'register_user_using_post' } = { 
    	summary => 'Register a new user',
        params => $params,
        returns => 'UserResource',
        };
}
# @return UserResource
#
sub register_user_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users';
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
    if ( exists $args{'user_resource'}) {
        $_body_data = $args{'user_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('UserResource', $response);
    return $_response_object;
}

#
# remove_tag_using_delete1
#
# Remove a tag from a user
# 
# @param int $user_id The id of the user (required)
# @param string $tag The tag to remove (required)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    'tag' => {
        data_type => 'string',
        description => 'The tag to remove',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'remove_tag_using_delete1' } = { 
    	summary => 'Remove a tag from a user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub remove_tag_using_delete1 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling remove_tag_using_delete1");
    }

    # verify the required parameter 'tag' is set
    unless (exists $args{'tag'}) {
      croak("Missing the required parameter 'tag' when calling remove_tag_using_delete1");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/tags/{tag}';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'tag'}) {
        my $_base_variable = "{" . "tag" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tag'});
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
# set_password_using_put
#
# Set a user's password
# 
# @param int $id The id of the user (required)
# @param string $password The new plain text password (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    'password' => {
        data_type => 'string',
        description => 'The new plain text password',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_password_using_put' } = { 
    	summary => 'Set a user&#39;s password',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_password_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_password_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/{id}/password';
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
    if ( exists $args{'password'}) {
        $_body_data = $args{'password'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_user_template_using_put
#
# Update a user template
# 
# @param string $id The id of the template (required)
# @param TemplateResource $user_template_resource The user template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'user_template_resource' => {
        data_type => 'TemplateResource',
        description => 'The user template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user_template_using_put' } = { 
    	summary => 'Update a user template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_user_template_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_user_template_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/templates/{id}';
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
    if ( exists $args{'user_template_resource'}) {
        $_body_data = $args{'user_template_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_user_using_put
#
# Update a user's info
# 
# @param string $id The id of the user or &#39;me&#39; (required)
# @param UserResource $user_resource The user resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the user or &#39;me&#39;',
        required => '1',
    },
    'user_resource' => {
        data_type => 'UserResource',
        description => 'The user resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_user_using_put' } = { 
    	summary => 'Update a user&#39;s info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_user_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_user_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/{id}';
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
    if ( exists $args{'user_resource'}) {
        $_body_data = $args{'user_resource'};
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
