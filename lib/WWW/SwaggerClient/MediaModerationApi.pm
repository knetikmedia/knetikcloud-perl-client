=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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
package WWW::SwaggerClient::MediaModerationApi;

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
# get_flag_report_using_get
#
# Get a flag report
# 
# @param int $id The flag report id (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The flag report id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_flag_report_using_get' } = { 
    	summary => 'Get a flag report',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub get_flag_report_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_flag_report_using_get");
    }

    # parse inputs
    my $_resource_path = '/moderation/reports/{id}';
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

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
# get_flags_report_using_get
#
# Returns a page of flag reports
# 
# @param boolean $exclude_resolved Ignore resolved context (optional, default to true)
# @param string $filter_context Filter by moderation context (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'exclude_resolved' => {
        data_type => 'boolean',
        description => 'Ignore resolved context',
        required => '0',
    },
    'filter_context' => {
        data_type => 'string',
        description => 'Filter by moderation context',
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
    __PACKAGE__->method_documentation->{ 'get_flags_report_using_get' } = { 
    	summary => 'Returns a page of flag reports',
        params => $params,
        returns => 'PageResourceFlagReportResource',
        };
}
# @return PageResourceFlagReportResource
#
sub get_flags_report_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/moderation/reports';
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
    if ( exists $args{'exclude_resolved'}) {
        $query_params->{'exclude_resolved'} = $self->{api_client}->to_query_value($args{'exclude_resolved'});
    }

    # query params
    if ( exists $args{'filter_context'}) {
        $query_params->{'filter_context'} = $self->{api_client}->to_query_value($args{'filter_context'});
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceFlagReportResource', $response);
    return $_response_object;
}

#
# set_flag_resolution_using_put
#
# Update a flag report
# 
# @param int $id The flag report id (required)
# @param FlagReportResource $flag_report_resource The new flag report (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The flag report id',
        required => '1',
    },
    'flag_report_resource' => {
        data_type => 'FlagReportResource',
        description => 'The new flag report',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_flag_resolution_using_put' } = { 
    	summary => 'Update a flag report',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub set_flag_resolution_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling set_flag_resolution_using_put");
    }

    # parse inputs
    my $_resource_path = '/moderation/reports/{id}';
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

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'flag_report_resource'}) {
        $_body_data = $args{'flag_report_resource'};
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
