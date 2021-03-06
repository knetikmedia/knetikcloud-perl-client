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
package KnetikCloud::AuthTokensApi;

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
# delete_tokens
#
# Delete tokens by username, client id, or both
# 
# @param string $username The username of the user (optional)
# @param string $client_id The id of the client (optional)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The username of the user',
        required => '0',
    },
    'client_id' => {
        data_type => 'string',
        description => 'The id of the client',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_tokens' } = { 
    	summary => 'Delete tokens by username, client id, or both',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_tokens {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/auth/tokens';

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
    if ( exists $args{'username'}) {
        $query_params->{'username'} = $self->{api_client}->to_query_value($args{'username'});
    }

    # query params
    if ( exists $args{'client_id'}) {
        $query_params->{'client_id'} = $self->{api_client}->to_query_value($args{'client_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_token
#
# Get a single token by username and client id
# 
# @param string $username The username of the user (required)
# @param string $client_id The id of the client (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The username of the user',
        required => '1',
    },
    'client_id' => {
        data_type => 'string',
        description => 'The id of the client',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_token' } = { 
    	summary => 'Get a single token by username and client id',
        params => $params,
        returns => 'OauthAccessTokenResource',
        };
}
# @return OauthAccessTokenResource
#
sub get_token {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling get_token");
    }

    # verify the required parameter 'client_id' is set
    unless (exists $args{'client_id'}) {
      croak("Missing the required parameter 'client_id' when calling get_token");
    }

    # parse inputs
    my $_resource_path = '/auth/tokens/{username}/{client_id}';

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
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'client_id'}) {
        my $_base_variable = "{" . "client_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'client_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('OauthAccessTokenResource', $response);
    return $_response_object;
}

#
# get_tokens
#
# List usernames and client ids
# 
# @param string $filter_client_id Filters for token whose client id matches provided string (optional)
# @param string $filter_username Filters for token whose username matches provided string (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional)
{
    my $params = {
    'filter_client_id' => {
        data_type => 'string',
        description => 'Filters for token whose client id matches provided string',
        required => '0',
    },
    'filter_username' => {
        data_type => 'string',
        description => 'Filters for token whose username matches provided string',
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
    __PACKAGE__->method_documentation->{ 'get_tokens' } = { 
    	summary => 'List usernames and client ids',
        params => $params,
        returns => 'PageResourceOauthAccessTokenResource',
        };
}
# @return PageResourceOauthAccessTokenResource
#
sub get_tokens {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/auth/tokens';

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
    if ( exists $args{'filter_client_id'}) {
        $query_params->{'filter_client_id'} = $self->{api_client}->to_query_value($args{'filter_client_id'});
    }

    # query params
    if ( exists $args{'filter_username'}) {
        $query_params->{'filter_username'} = $self->{api_client}->to_query_value($args{'filter_username'});
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
    my $auth_settings = [qw(oauth2_client_credentials_grant oauth2_password_grant )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceOauthAccessTokenResource', $response);
    return $_response_object;
}

1;
