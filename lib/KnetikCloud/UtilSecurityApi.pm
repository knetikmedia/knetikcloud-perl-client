=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

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
package KnetikCloud::UtilSecurityApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use KnetikCloud::ApiClient;
use KnetikCloud::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => KnetikCloud::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# get_user_location_log
#
# Returns the authentication log for a user
# 
# @param int $user_id The user id (optional)
{
    my $params = {
    'user_id' => {
        data_type => 'int',
        description => 'The user id',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_location_log' } = { 
    	summary => 'Returns the authentication log for a user',
        params => $params,
        returns => 'PageResourceLocationLogResource',
        };
}
# @return PageResourceLocationLogResource
#
sub get_user_location_log {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/security/country-log';

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
    if ( exists $args{'user_id'}) {
        $query_params->{'user_id'} = $self->{api_client}->to_query_value($args{'user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceLocationLogResource', $response);
    return $_response_object;
}

#
# get_user_token_details
#
# Returns the authentication token details. Use /users endpoint for detailed user's info
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_user_token_details' } = { 
    	summary => 'Returns the authentication token details. Use /users endpoint for detailed user&#39;s info',
        params => $params,
        returns => 'TokenDetailsResource',
        };
}
# @return TokenDetailsResource
#
sub get_user_token_details {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/me';

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
    my $_response_object = $self->{api_client}->deserialize('TokenDetailsResource', $response);
    return $_response_object;
}

1;
