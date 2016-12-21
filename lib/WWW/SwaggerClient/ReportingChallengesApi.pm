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
package WWW::SwaggerClient::ReportingChallengesApi;

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
# get_challenge_event_leaderboard_using_get
#
# Retrieve a challenge event leaderboard details
# 
# @param int $filter_event A sepecific challenge event id (optional)
{
    my $params = {
    'filter_event' => {
        data_type => 'int',
        description => 'A sepecific challenge event id',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_challenge_event_leaderboard_using_get' } = { 
    	summary => 'Retrieve a challenge event leaderboard details',
        params => $params,
        returns => 'PageResourceChallengeEventParticipantResource',
        };
}
# @return PageResourceChallengeEventParticipantResource
#
sub get_challenge_event_leaderboard_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/reporting/events/leaderboard';
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
    if ( exists $args{'filter_event'}) {
        $query_params->{'filter_event'} = $self->{api_client}->to_query_value($args{'filter_event'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceChallengeEventParticipantResource', $response);
    return $_response_object;
}

#
# get_challenge_event_participants_using_get
#
# Retrieve a challenge event participant details
# 
# @param int $filter_event A sepecific challenge event id (optional)
{
    my $params = {
    'filter_event' => {
        data_type => 'int',
        description => 'A sepecific challenge event id',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_challenge_event_participants_using_get' } = { 
    	summary => 'Retrieve a challenge event participant details',
        params => $params,
        returns => 'PageResourceChallengeEventParticipantResource',
        };
}
# @return PageResourceChallengeEventParticipantResource
#
sub get_challenge_event_participants_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/reporting/events/participants';
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
    if ( exists $args{'filter_event'}) {
        $query_params->{'filter_event'} = $self->{api_client}->to_query_value($args{'filter_event'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceChallengeEventParticipantResource', $response);
    return $_response_object;
}

1;