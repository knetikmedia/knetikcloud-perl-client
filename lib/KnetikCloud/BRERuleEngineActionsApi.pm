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
package KnetikCloud::BRERuleEngineActionsApi;

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
# get_bre_actions
#
# Get a list of available actions
# 
# @param string $filter_category Filter for actions that are within a specific category (optional)
# @param string $filter_name Filter for actions that have names containing the given string (optional)
{
    my $params = {
    'filter_category' => {
        data_type => 'string',
        description => 'Filter for actions that are within a specific category',
        required => '0',
    },
    'filter_name' => {
        data_type => 'string',
        description => 'Filter for actions that have names containing the given string',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_bre_actions' } = { 
    	summary => 'Get a list of available actions',
        params => $params,
        returns => 'ARRAY[ActionResource]',
        };
}
# @return ARRAY[ActionResource]
#
sub get_bre_actions {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/actions';
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
    if ( exists $args{'filter_category'}) {
        $query_params->{'filter_category'} = $self->{api_client}->to_query_value($args{'filter_category'});
    }

    # query params
    if ( exists $args{'filter_name'}) {
        $query_params->{'filter_name'} = $self->{api_client}->to_query_value($args{'filter_name'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ActionResource]', $response);
    return $_response_object;
}

1;
