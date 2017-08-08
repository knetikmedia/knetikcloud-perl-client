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
package KnetikCloud::LogsApi;

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
# add_user_log
#
# Add a user log entry
# 
# @param UserActionLog $log_entry The user log entry to be added (optional)
{
    my $params = {
    'log_entry' => {
        data_type => 'UserActionLog',
        description => 'The user log entry to be added',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_user_log' } = { 
    	summary => 'Add a user log entry',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub add_user_log {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/audit/logs';

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
    if ( exists $args{'log_entry'}) {
        $_body_data = $args{'log_entry'};
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
# get_bre_event_log
#
# Get an existing BRE event log entry by id
# 
# @param string $id The BRE event log entry id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The BRE event log entry id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_bre_event_log' } = { 
    	summary => 'Get an existing BRE event log entry by id',
        params => $params,
        returns => 'BreEventLog',
        };
}
# @return BreEventLog
#
sub get_bre_event_log {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_bre_event_log");
    }

    # parse inputs
    my $_resource_path = '/bre/logs/event-log/{id}';

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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BreEventLog', $response);
    return $_response_object;
}

#
# get_bre_event_logs
#
# Returns a list of BRE event log entries
# 
# @param string $filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
# @param string $filter_event_name Filter event logs by event name (optional)
# @param string $filter_event_id Filter event logs by request id (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
{
    my $params = {
    'filter_start_date' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the event log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).',
        required => '0',
    },
    'filter_event_name' => {
        data_type => 'string',
        description => 'Filter event logs by event name',
        required => '0',
    },
    'filter_event_id' => {
        data_type => 'string',
        description => 'Filter event logs by request id',
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
    __PACKAGE__->method_documentation->{ 'get_bre_event_logs' } = { 
    	summary => 'Returns a list of BRE event log entries',
        params => $params,
        returns => 'PageResourceBreEventLog',
        };
}
# @return PageResourceBreEventLog
#
sub get_bre_event_logs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/logs/event-log';

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
    if ( exists $args{'filter_start_date'}) {
        $query_params->{'filter_start_date'} = $self->{api_client}->to_query_value($args{'filter_start_date'});
    }

    # query params
    if ( exists $args{'filter_event_name'}) {
        $query_params->{'filter_event_name'} = $self->{api_client}->to_query_value($args{'filter_event_name'});
    }

    # query params
    if ( exists $args{'filter_event_id'}) {
        $query_params->{'filter_event_id'} = $self->{api_client}->to_query_value($args{'filter_event_id'});
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceBreEventLog', $response);
    return $_response_object;
}

#
# get_bre_forward_log
#
# Get an existing forward log entry by id
# 
# @param string $id The forward log entry id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The forward log entry id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_bre_forward_log' } = { 
    	summary => 'Get an existing forward log entry by id',
        params => $params,
        returns => 'ForwardLog',
        };
}
# @return ForwardLog
#
sub get_bre_forward_log {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_bre_forward_log");
    }

    # parse inputs
    my $_resource_path = '/bre/logs/forward-log/{id}';

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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ForwardLog', $response);
    return $_response_object;
}

#
# get_bre_forward_logs
#
# Returns a list of forward log entries
# 
# @param string $filter_start_date A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
# @param string $filter_end_date A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE). (optional)
# @param int $filter_status_code Filter forward logs by http status code (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:DESC)
{
    my $params = {
    'filter_start_date' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the log start date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).',
        required => '0',
    },
    'filter_end_date' => {
        data_type => 'string',
        description => 'A comma separated string without spaces.  First value is the operator to search on, second value is the log end date, a unix timestamp in seconds.  Allowed operators: (GT, LT, EQ, GOE, LOE).',
        required => '0',
    },
    'filter_status_code' => {
        data_type => 'int',
        description => 'Filter forward logs by http status code',
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
    __PACKAGE__->method_documentation->{ 'get_bre_forward_logs' } = { 
    	summary => 'Returns a list of forward log entries',
        params => $params,
        returns => 'PageResourceForwardLog',
        };
}
# @return PageResourceForwardLog
#
sub get_bre_forward_logs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/logs/forward-log';

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
    if ( exists $args{'filter_start_date'}) {
        $query_params->{'filter_start_date'} = $self->{api_client}->to_query_value($args{'filter_start_date'});
    }

    # query params
    if ( exists $args{'filter_end_date'}) {
        $query_params->{'filter_end_date'} = $self->{api_client}->to_query_value($args{'filter_end_date'});
    }

    # query params
    if ( exists $args{'filter_status_code'}) {
        $query_params->{'filter_status_code'} = $self->{api_client}->to_query_value($args{'filter_status_code'});
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceForwardLog', $response);
    return $_response_object;
}

#
# get_user_log
#
# Returns a user log entry by id
# 
# @param string $id The user log entry id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The user log entry id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_user_log' } = { 
    	summary => 'Returns a user log entry by id',
        params => $params,
        returns => 'UserActionLog',
        };
}
# @return UserActionLog
#
sub get_user_log {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_user_log");
    }

    # parse inputs
    my $_resource_path = '/audit/logs/{id}';

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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserActionLog', $response);
    return $_response_object;
}

#
# get_user_logs
#
# Returns a page of user logs entries
# 
# @param int $filter_user Filter for actions taken by a specific user by id (optional)
# @param string $filter_action_name Filter for actions of a specific name (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to timestamp:DESC)
{
    my $params = {
    'filter_user' => {
        data_type => 'int',
        description => 'Filter for actions taken by a specific user by id',
        required => '0',
    },
    'filter_action_name' => {
        data_type => 'string',
        description => 'Filter for actions of a specific name',
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
    __PACKAGE__->method_documentation->{ 'get_user_logs' } = { 
    	summary => 'Returns a page of user logs entries',
        params => $params,
        returns => 'PageResourceUserActionLog',
        };
}
# @return PageResourceUserActionLog
#
sub get_user_logs {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/audit/logs';

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
    if ( exists $args{'filter_user'}) {
        $query_params->{'filter_user'} = $self->{api_client}->to_query_value($args{'filter_user'});
    }

    # query params
    if ( exists $args{'filter_action_name'}) {
        $query_params->{'filter_action_name'} = $self->{api_client}->to_query_value($args{'filter_action_name'});
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceUserActionLog', $response);
    return $_response_object;
}

1;
