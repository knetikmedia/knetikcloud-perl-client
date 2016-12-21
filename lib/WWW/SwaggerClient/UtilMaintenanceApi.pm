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
package WWW::SwaggerClient::UtilMaintenanceApi;

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
# delete_using_delete1
#
# Remove maintenance info
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'delete_using_delete1' } = { 
    	summary => 'Remove maintenance info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_using_delete1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/maintenance';
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
# get_using_get1
#
# Get current maintenance info
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_using_get1' } = { 
    	summary => 'Get current maintenance info',
        params => $params,
        returns => 'Maintenance',
        };
}
# @return Maintenance
#
sub get_using_get1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/maintenance';
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
    my $_response_object = $self->{api_client}->deserialize('Maintenance', $response);
    return $_response_object;
}

#
# post_using_post
#
# Set current maintenance info
# 
# @param Maintenance $maintenance The Maintenance Object (optional)
{
    my $params = {
    'maintenance' => {
        data_type => 'Maintenance',
        description => 'The Maintenance Object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_using_post' } = { 
    	summary => 'Set current maintenance info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub post_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/maintenance';
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
    if ( exists $args{'maintenance'}) {
        $_body_data = $args{'maintenance'};
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
# post_using_put
#
# Set current maintenance info
# 
# @param Maintenance $maintenance The Maintenance Object (optional)
{
    my $params = {
    'maintenance' => {
        data_type => 'Maintenance',
        description => 'The Maintenance Object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_using_put' } = { 
    	summary => 'Set current maintenance info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub post_using_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/maintenance';
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

    my $_body_data;
    # body params
    if ( exists $args{'maintenance'}) {
        $_body_data = $args{'maintenance'};
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