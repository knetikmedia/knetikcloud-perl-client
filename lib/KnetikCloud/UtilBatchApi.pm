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
package KnetikCloud::UtilBatchApi;

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
# get_batch
#
# Get batch result with token
# 
# @param string $token token (required)
{
    my $params = {
    'token' => {
        data_type => 'string',
        description => 'token',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_batch' } = { 
    	summary => 'Get batch result with token',
        params => $params,
        returns => 'ARRAY[BatchReturn]',
        };
}
# @return ARRAY[BatchReturn]
#
sub get_batch {
    my ($self, %args) = @_;

    # verify the required parameter 'token' is set
    unless (exists $args{'token'}) {
      croak("Missing the required parameter 'token' when calling get_batch");
    }

    # parse inputs
    my $_resource_path = '/batch/{token}';

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
    if ( exists $args{'token'}) {
        my $_base_variable = "{" . "token" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'token'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BatchReturn]', $response);
    return $_response_object;
}

#
# send_batch
#
# Request to run API call given the method, content type, path url, and body of request
# 
# @param Batch $batch The batch object (optional)
{
    my $params = {
    'batch' => {
        data_type => 'Batch',
        description => 'The batch object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_batch' } = { 
    	summary => 'Request to run API call given the method, content type, path url, and body of request',
        params => $params,
        returns => 'ARRAY[BatchReturn]',
        };
}
# @return ARRAY[BatchReturn]
#
sub send_batch {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/batch';

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
    if ( exists $args{'batch'}) {
        $_body_data = $args{'batch'};
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[BatchReturn]', $response);
    return $_response_object;
}

1;
