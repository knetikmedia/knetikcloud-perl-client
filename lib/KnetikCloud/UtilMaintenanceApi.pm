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
package KnetikCloud::UtilMaintenanceApi;

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
# delete_maintenance
#
# Delete maintenance info
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'delete_maintenance' } = { 
    	summary => 'Delete maintenance info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_maintenance {
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_maintenance
#
# Get current maintenance info
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_maintenance' } = { 
    	summary => 'Get current maintenance info',
        params => $params,
        returns => 'Maintenance',
        };
}
# @return Maintenance
#
sub get_maintenance {
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
# set_maintenance
#
# Set current maintenance info
# 
# @param Maintenance $maintenance The maintenance object (optional)
{
    my $params = {
    'maintenance' => {
        data_type => 'Maintenance',
        description => 'The maintenance object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_maintenance' } = { 
    	summary => 'Set current maintenance info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_maintenance {
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_maintenance
#
# Update current maintenance info
# 
# @param Maintenance $maintenance The maintenance object (optional)
{
    my $params = {
    'maintenance' => {
        data_type => 'Maintenance',
        description => 'The maintenance object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_maintenance' } = { 
    	summary => 'Update current maintenance info',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_maintenance {
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;