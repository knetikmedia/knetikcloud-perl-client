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
package KnetikCloud::ReportingUsersApi;

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
# get_user_registrations
#
# Get user registration info
# 
# @param string $granularity The time duration to aggregate by (optional, default to day)
# @param int $start_date The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time (optional)
# @param int $end_date The end of the time range to aggregate, unix timestamp in seconds. Default is end of time (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'granularity' => {
        data_type => 'string',
        description => 'The time duration to aggregate by',
        required => '0',
    },
    'start_date' => {
        data_type => 'int',
        description => 'The start of the time range to aggregate, unix timestamp in seconds. Default is beginning of time',
        required => '0',
    },
    'end_date' => {
        data_type => 'int',
        description => 'The end of the time range to aggregate, unix timestamp in seconds. Default is end of time',
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
    };
    __PACKAGE__->method_documentation->{ 'get_user_registrations' } = { 
    	summary => 'Get user registration info',
        params => $params,
        returns => 'PageResourceAggregateCountResource',
        };
}
# @return PageResourceAggregateCountResource
#
sub get_user_registrations {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/reporting/users/registrations';

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
    if ( exists $args{'granularity'}) {
        $query_params->{'granularity'} = $self->{api_client}->to_query_value($args{'granularity'});
    }

    # query params
    if ( exists $args{'start_date'}) {
        $query_params->{'start_date'} = $self->{api_client}->to_query_value($args{'start_date'});
    }

    # query params
    if ( exists $args{'end_date'}) {
        $query_params->{'end_date'} = $self->{api_client}->to_query_value($args{'end_date'});
    }

    # query params
    if ( exists $args{'size'}) {
        $query_params->{'size'} = $self->{api_client}->to_query_value($args{'size'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceAggregateCountResource', $response);
    return $_response_object;
}

1;
