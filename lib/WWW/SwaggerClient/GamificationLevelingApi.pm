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
package WWW::SwaggerClient::GamificationLevelingApi;

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
# change_user_level_experience_using_put
#
# Update or create a leveling progress record for a user
# 
# @param int $user_id The id of the user (required)
# @param string $name The level schema name (required)
# @param int $progress The current progress amount (optional)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The level schema name',
        required => '1',
    },
    'progress' => {
        data_type => 'int',
        description => 'The current progress amount',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'change_user_level_experience_using_put' } = { 
    	summary => 'Update or create a leveling progress record for a user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub change_user_level_experience_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling change_user_level_experience_using_put");
    }

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling change_user_level_experience_using_put");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/leveling/{name}';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'progress'}) {
        $_body_data = $args{'progress'};
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
# create_level_using_post
#
# Create a level schema
# 
# @param LevelingResource $level The level schema definition (optional)
{
    my $params = {
    'level' => {
        data_type => 'LevelingResource',
        description => 'The level schema definition',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_level_using_post' } = { 
    	summary => 'Create a level schema',
        params => $params,
        returns => 'LevelingResource',
        };
}
# @return LevelingResource
#
sub create_level_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/leveling';
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
    if ( exists $args{'level'}) {
        $_body_data = $args{'level'};
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
    my $_response_object = $self->{api_client}->deserialize('LevelingResource', $response);
    return $_response_object;
}

#
# delete_level_using_delete
#
# Delete a level
# 
# @param string $name The level schema name (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The level schema name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_level_using_delete' } = { 
    	summary => 'Delete a level',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_level_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling delete_level_using_delete");
    }

    # parse inputs
    my $_resource_path = '/leveling/{name}';
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
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
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
# get_available_triggers_using_get1
#
# Get the list of triggers that can be used to trigger a leveling progress update
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_available_triggers_using_get1' } = { 
    	summary => 'Get the list of triggers that can be used to trigger a leveling progress update',
        params => $params,
        returns => 'ARRAY[BreTriggerResource]',
        };
}
# @return ARRAY[BreTriggerResource]
#
sub get_available_triggers_using_get1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/leveling/triggers';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BreTriggerResource]', $response);
    return $_response_object;
}

#
# get_level_using_get
#
# Retrieve a particular level
# 
# @param string $name The level schema name (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The level schema name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_level_using_get' } = { 
    	summary => 'Retrieve a particular level',
        params => $params,
        returns => 'LevelingResource',
        };
}
# @return LevelingResource
#
sub get_level_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling get_level_using_get");
    }

    # parse inputs
    my $_resource_path = '/leveling/{name}';
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
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('LevelingResource', $response);
    return $_response_object;
}

#
# get_levels_using_get
#
# List and search levels
# 
# @param string $filter_name Filter for level schemas whose name contains a given string (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to 1)
{
    my $params = {
    'filter_name' => {
        data_type => 'string',
        description => 'Filter for level schemas whose name contains a given string',
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
    __PACKAGE__->method_documentation->{ 'get_levels_using_get' } = { 
    	summary => 'List and search levels',
        params => $params,
        returns => 'PageLevelingResource',
        };
}
# @return PageLevelingResource
#
sub get_levels_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/leveling';
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

    # query params
    if ( exists $args{'filter_name'}) {
        $query_params->{'filter_name'} = $self->{api_client}->to_query_value($args{'filter_name'});
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
    my $_response_object = $self->{api_client}->deserialize('PageLevelingResource', $response);
    return $_response_object;
}

#
# get_user_level_using_get
#
# Get a user's progress for a given level schema
# 
# @param int $user_id The id of the user (required)
# @param string $name The level schema name (required)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'The id of the user',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'The level schema name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_level_using_get' } = { 
    	summary => 'Get a user&#39;s progress for a given level schema',
        params => $params,
        returns => 'UserLevelingResource',
        };
}
# @return UserLevelingResource
#
sub get_user_level_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling get_user_level_using_get");
    }

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling get_user_level_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/leveling/{name}';
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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "user_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
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
    my $_response_object = $self->{api_client}->deserialize('UserLevelingResource', $response);
    return $_response_object;
}

#
# get_user_levels_using_get
#
# Get a user's progress for all level schemas
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
    __PACKAGE__->method_documentation->{ 'get_user_levels_using_get' } = { 
    	summary => 'Get a user&#39;s progress for all level schemas',
        params => $params,
        returns => 'PageUserLevelingResource',
        };
}
# @return PageUserLevelingResource
#
sub get_user_levels_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling get_user_levels_using_get");
    }

    # parse inputs
    my $_resource_path = '/users/{user_id}/leveling';
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
    my $_response_object = $self->{api_client}->deserialize('PageUserLevelingResource', $response);
    return $_response_object;
}

#
# update_level_using_put
#
# Update a level
# 
# @param string $name The level schema name (required)
# @param LevelingResource $new_level The level schema definition (optional)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'The level schema name',
        required => '1',
    },
    'new_level' => {
        data_type => 'LevelingResource',
        description => 'The level schema definition',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_level_using_put' } = { 
    	summary => 'Update a level',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_level_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling update_level_using_put");
    }

    # parse inputs
    my $_resource_path = '/leveling/{name}';
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
    if ( exists $args{'name'}) {
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'new_level'}) {
        $_body_data = $args{'new_level'};
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
