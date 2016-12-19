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
package WWW::SwaggerClient::GamificationLeaderboardsApi;

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
# get_leaderboard_using_get
#
# Retrieves leaderboard details and paginated entries
# 
# @param string $context_type The context type for the leaderboard (required)
# @param string $context_id The context id for the leaderboard (required)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'context_type' => {
        data_type => 'string',
        description => 'The context type for the leaderboard',
        required => '1',
    },
    'context_id' => {
        data_type => 'string',
        description => 'The context id for the leaderboard',
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
    };
    __PACKAGE__->method_documentation->{ 'get_leaderboard_using_get' } = { 
    	summary => 'Retrieves leaderboard details and paginated entries',
        params => $params,
        returns => 'LeaderboardResource',
        };
}
# @return LeaderboardResource
#
sub get_leaderboard_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'context_type' is set
    unless (exists $args{'context_type'}) {
      croak("Missing the required parameter 'context_type' when calling get_leaderboard_using_get");
    }

    # verify the required parameter 'context_id' is set
    unless (exists $args{'context_id'}) {
      croak("Missing the required parameter 'context_id' when calling get_leaderboard_using_get");
    }

    # parse inputs
    my $_resource_path = '/leaderboards/{context_type}/{context_id}';
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
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # path params
    if ( exists $args{'context_type'}) {
        my $_base_variable = "{" . "context_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'context_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'context_id'}) {
        my $_base_variable = "{" . "context_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'context_id'});
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
    my $_response_object = $self->{api_client}->deserialize('LeaderboardResource', $response);
    return $_response_object;
}

#
# get_strategies_using_get
#
# Get a list of available leaderboard strategy names
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_strategies_using_get' } = { 
    	summary => 'Get a list of available leaderboard strategy names',
        params => $params,
        returns => 'ARRAY[string]',
        };
}
# @return ARRAY[string]
#
sub get_strategies_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/leaderboards/strategies';
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
    my $auth_settings = [qw()];

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
# get_user_rank_using_get
#
# Retrieves a specific user entry with rank
# 
# @param string $context_type The context type for the leaderboard (required)
# @param string $context_id The context id for the leaderboard (required)
# @param string $id The id of a user (required)
{
    my $params = {
    'context_type' => {
        data_type => 'string',
        description => 'The context type for the leaderboard',
        required => '1',
    },
    'context_id' => {
        data_type => 'string',
        description => 'The context id for the leaderboard',
        required => '1',
    },
    'id' => {
        data_type => 'string',
        description => 'The id of a user',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_rank_using_get' } = { 
    	summary => 'Retrieves a specific user entry with rank',
        params => $params,
        returns => 'LeaderboardEntryResource',
        };
}
# @return LeaderboardEntryResource
#
sub get_user_rank_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'context_type' is set
    unless (exists $args{'context_type'}) {
      croak("Missing the required parameter 'context_type' when calling get_user_rank_using_get");
    }

    # verify the required parameter 'context_id' is set
    unless (exists $args{'context_id'}) {
      croak("Missing the required parameter 'context_id' when calling get_user_rank_using_get");
    }

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_user_rank_using_get");
    }

    # parse inputs
    my $_resource_path = '/leaderboards/{context_type}/{context_id}/users/{id}/rank';
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
    if ( exists $args{'context_type'}) {
        my $_base_variable = "{" . "context_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'context_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'context_id'}) {
        my $_base_variable = "{" . "context_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'context_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
    my $_response_object = $self->{api_client}->deserialize('LeaderboardEntryResource', $response);
    return $_response_object;
}

1;
