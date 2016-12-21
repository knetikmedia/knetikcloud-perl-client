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
package WWW::SwaggerClient::UsersGroupsApi;

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
# add_group_using_post
#
# Adds a new group in the system
# 
# @param GroupResource $group_resource The new group (optional)
{
    my $params = {
    'group_resource' => {
        data_type => 'GroupResource',
        description => 'The new group',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_group_using_post' } = { 
    	summary => 'Adds a new group in the system',
        params => $params,
        returns => 'GroupResource',
        };
}
# @return GroupResource
#
sub add_group_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/groups';
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
    if ( exists $args{'group_resource'}) {
        $_body_data = $args{'group_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('GroupResource', $response);
    return $_response_object;
}

#
# add_member_using_post
#
# Adds a new member to the group
# 
# @param string $unique_name The group unique name (required)
# @param GroupMemberResource $username The username of a user to add to the group (required)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
    },
    'username' => {
        data_type => 'GroupMemberResource',
        description => 'The username of a user to add to the group',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_member_using_post' } = { 
    	summary => 'Adds a new member to the group',
        params => $params,
        returns => 'GroupMemberResource',
        };
}
# @return GroupMemberResource
#
sub add_member_using_post {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling add_member_using_post");
    }

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling add_member_using_post");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}/members';
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
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'username'}) {
        $_body_data = $args{'username'};
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
    my $_response_object = $self->{api_client}->deserialize('GroupMemberResource', $response);
    return $_response_object;
}

#
# create_group_template_using_post
#
# Create a group template
# 
# @param TemplateResource $group_template_resource The group template resource object (optional)
{
    my $params = {
    'group_template_resource' => {
        data_type => 'TemplateResource',
        description => 'The group template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_group_template_using_post' } = { 
    	summary => 'Create a group template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub create_group_template_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/groups/templates';
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
    if ( exists $args{'group_template_resource'}) {
        $_body_data = $args{'group_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# delete_group_template_using_delete
#
# Delete a group template
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
    __PACKAGE__->method_documentation->{ 'delete_group_template_using_delete' } = { 
    	summary => 'Delete a group template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_group_template_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_group_template_using_delete");
    }

    # parse inputs
    my $_resource_path = '/users/groups/templates/{id}';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_group_using_delete
#
# Removes a user from a group
# 
# @param string $unique_name The group unique name (required)
# @param int $user_id The id of the user to remove (required)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
    },
    'user_id' => {
        data_type => 'int',
        description => 'The id of the user to remove',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_group_using_delete' } = { 
    	summary => 'Removes a user from a group',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_group_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling delete_group_using_delete");
    }

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling delete_group_using_delete");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}/members/{user_id}';
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
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_group_using_delete1
#
# Removes a group from the system IF no resources are attached to it
# 
# @param string $unique_name The group unique name (required)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_group_using_delete1' } = { 
    	summary => 'Removes a group from the system IF no resources are attached to it',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_group_using_delete1 {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling delete_group_using_delete1");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}';
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
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
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
# get_group_template_using_get
#
# Get a single group template
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
    __PACKAGE__->method_documentation->{ 'get_group_template_using_get' } = { 
    	summary => 'Get a single group template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub get_group_template_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_group_template_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/groups/templates/{id}';
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# get_group_templates_using_get
#
# List and search group templates
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
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
        description => 'a comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_group_templates_using_get' } = { 
    	summary => 'List and search group templates',
        params => $params,
        returns => 'PageResourceTemplateResource',
        };
}
# @return PageResourceTemplateResource
#
sub get_group_templates_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/groups/templates';
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceTemplateResource', $response);
    return $_response_object;
}

#
# get_group_using_get
#
# Loads a specific group's details
# 
# @param string $unique_name The group unique name (required)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_group_using_get' } = { 
    	summary => 'Loads a specific group&#39;s details',
        params => $params,
        returns => 'GroupResource',
        };
}
# @return GroupResource
#
sub get_group_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling get_group_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}';
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
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
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
    my $_response_object = $self->{api_client}->deserialize('GroupResource', $response);
    return $_response_object;
}

#
# search_groups_using_get
#
# Lists members of the group
# 
# @param string $unique_name The group unique name (required)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
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
    __PACKAGE__->method_documentation->{ 'search_groups_using_get' } = { 
    	summary => 'Lists members of the group',
        params => $params,
        returns => 'PageResourceGroupMemberResource',
        };
}
# @return PageResourceGroupMemberResource
#
sub search_groups_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling search_groups_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}/members';
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

    # path params
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceGroupMemberResource', $response);
    return $_response_object;
}

#
# search_groups_using_get1
#
# List and search groups
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
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
    __PACKAGE__->method_documentation->{ 'search_groups_using_get1' } = { 
    	summary => 'List and search groups',
        params => $params,
        returns => 'PageResourceGroupResource',
        };
}
# @return PageResourceGroupResource
#
sub search_groups_using_get1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/groups';
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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceGroupResource', $response);
    return $_response_object;
}

#
# update_group_template_using_put
#
# Update a group template
# 
# @param string $id The id of the template (required)
# @param TemplateResource $group_template_resource The group template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'group_template_resource' => {
        data_type => 'TemplateResource',
        description => 'The group template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_group_template_using_put' } = { 
    	summary => 'Update a group template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_group_template_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_group_template_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/groups/templates/{id}';
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
    if ( exists $args{'group_template_resource'}) {
        $_body_data = $args{'group_template_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_group_using_put
#
# Modifies a group's details
# 
# @param string $unique_name The group unique name (required)
# @param GroupResource $group_resource The updated group (optional)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
    },
    'group_resource' => {
        data_type => 'GroupResource',
        description => 'The updated group',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_group_using_put' } = { 
    	summary => 'Modifies a group&#39;s details',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_group_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling update_group_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}';
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
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'group_resource'}) {
        $_body_data = $args{'group_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_member_status_using_put
#
# Change a user's status
# 
# @param string $unique_name The group unique name (required)
# @param int $user_id The user id of the member to modify (required)
# @param string $status The new status for the user (required)
{
    my $params = {
    'unique_name' => {
        data_type => 'string',
        description => 'The group unique name',
        required => '1',
    },
    'user_id' => {
        data_type => 'int',
        description => 'The user id of the member to modify',
        required => '1',
    },
    'status' => {
        data_type => 'string',
        description => 'The new status for the user',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_member_status_using_put' } = { 
    	summary => 'Change a user&#39;s status',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_member_status_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'unique_name' is set
    unless (exists $args{'unique_name'}) {
      croak("Missing the required parameter 'unique_name' when calling update_member_status_using_put");
    }

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling update_member_status_using_put");
    }

    # verify the required parameter 'status' is set
    unless (exists $args{'status'}) {
      croak("Missing the required parameter 'status' when calling update_member_status_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/groups/{unique_name}/members/{user_id}/status';
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
    if ( exists $args{'unique_name'}) {
        my $_base_variable = "{" . "unique_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'unique_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'status'}) {
        $_body_data = $args{'status'};
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
