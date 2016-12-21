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
package WWW::SwaggerClient::BRERuleEngineTriggersApi;

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
# create_trigger_using_post
#
# Create a trigger
# 
# @param BreTriggerResource $bre_trigger_resource The BRE trigger resource object (optional)
{
    my $params = {
    'bre_trigger_resource' => {
        data_type => 'BreTriggerResource',
        description => 'The BRE trigger resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_trigger_using_post' } = { 
    	summary => 'Create a trigger',
        params => $params,
        returns => 'BreTriggerResource',
        };
}
# @return BreTriggerResource
#
sub create_trigger_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/triggers';
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
    if ( exists $args{'bre_trigger_resource'}) {
        $_body_data = $args{'bre_trigger_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BreTriggerResource', $response);
    return $_response_object;
}

#
# delete_trigger_using_delete
#
# Delete a trigger
# 
# @param string $event_name The trigger event name (required)
{
    my $params = {
    'event_name' => {
        data_type => 'string',
        description => 'The trigger event name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_trigger_using_delete' } = { 
    	summary => 'Delete a trigger',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_trigger_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'event_name' is set
    unless (exists $args{'event_name'}) {
      croak("Missing the required parameter 'event_name' when calling delete_trigger_using_delete");
    }

    # parse inputs
    my $_resource_path = '/bre/triggers/{event_name}';
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

    # path params
    if ( exists $args{'event_name'}) {
        my $_base_variable = "{" . "event_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_name'});
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
# get_trigger_using_get
#
# Get a single trigger
# 
# @param string $event_name The trigger event name (required)
{
    my $params = {
    'event_name' => {
        data_type => 'string',
        description => 'The trigger event name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_trigger_using_get' } = { 
    	summary => 'Get a single trigger',
        params => $params,
        returns => 'BreTriggerResource',
        };
}
# @return BreTriggerResource
#
sub get_trigger_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'event_name' is set
    unless (exists $args{'event_name'}) {
      croak("Missing the required parameter 'event_name' when calling get_trigger_using_get");
    }

    # parse inputs
    my $_resource_path = '/bre/triggers/{event_name}';
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
    if ( exists $args{'event_name'}) {
        my $_base_variable = "{" . "event_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
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
    my $_response_object = $self->{api_client}->deserialize('BreTriggerResource', $response);
    return $_response_object;
}

#
# get_triggers_using_get
#
# List triggers
# 
# @param boolean $filter_system Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed (optional)
# @param string $filter_category Filter for triggers that are within a specific category (optional)
# @param string $filter_name Filter for triggers that have names containing the given string (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'filter_system' => {
        data_type => 'boolean',
        description => 'Filter for triggers that are system triggers when true, or not when false. Leave off for both mixed',
        required => '0',
    },
    'filter_category' => {
        data_type => 'string',
        description => 'Filter for triggers that are within a specific category',
        required => '0',
    },
    'filter_name' => {
        data_type => 'string',
        description => 'Filter for triggers that have names containing the given string',
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
    __PACKAGE__->method_documentation->{ 'get_triggers_using_get' } = { 
    	summary => 'List triggers',
        params => $params,
        returns => 'PageResourceBreTriggerResource',
        };
}
# @return PageResourceBreTriggerResource
#
sub get_triggers_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/triggers';
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
    if ( exists $args{'filter_system'}) {
        $query_params->{'filter_system'} = $self->{api_client}->to_query_value($args{'filter_system'});
    }

    # query params
    if ( exists $args{'filter_category'}) {
        $query_params->{'filter_category'} = $self->{api_client}->to_query_value($args{'filter_category'});
    }

    # query params
    if ( exists $args{'filter_name'}) {
        $query_params->{'filter_name'} = $self->{api_client}->to_query_value($args{'filter_name'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceBreTriggerResource', $response);
    return $_response_object;
}

#
# update_trigger_using_put
#
# Update a trigger
# 
# @param string $event_name The trigger event name (required)
# @param BreTriggerResource $bre_trigger_resource The BRE trigger resource object (optional)
{
    my $params = {
    'event_name' => {
        data_type => 'string',
        description => 'The trigger event name',
        required => '1',
    },
    'bre_trigger_resource' => {
        data_type => 'BreTriggerResource',
        description => 'The BRE trigger resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_trigger_using_put' } = { 
    	summary => 'Update a trigger',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_trigger_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'event_name' is set
    unless (exists $args{'event_name'}) {
      croak("Missing the required parameter 'event_name' when calling update_trigger_using_put");
    }

    # parse inputs
    my $_resource_path = '/bre/triggers/{event_name}';
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
    if ( exists $args{'event_name'}) {
        my $_base_variable = "{" . "event_name" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'event_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'bre_trigger_resource'}) {
        $_body_data = $args{'bre_trigger_resource'};
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
