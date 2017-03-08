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
package KnetikCloud::ActivitiesApi;

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
# create_activity
#
# Create an activity
# 
# @param ActivityResource $activity_resource The activity resource object (optional)
{
    my $params = {
    'activity_resource' => {
        data_type => 'ActivityResource',
        description => 'The activity resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_activity' } = { 
    	summary => 'Create an activity',
        params => $params,
        returns => 'ActivityResource',
        };
}
# @return ActivityResource
#
sub create_activity {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/activities';
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
    if ( exists $args{'activity_resource'}) {
        $_body_data = $args{'activity_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ActivityResource', $response);
    return $_response_object;
}

#
# create_activity_occurrence
#
# Create a new activity occurrence
# 
# @param boolean $test if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings (optional, default to false)
# @param ActivityOccurrenceResource $activity_occurrence_resource The activity occurrence object (optional)
{
    my $params = {
    'test' => {
        data_type => 'boolean',
        description => 'if true, indicates that the occurrence should NOT be created. This can be used to test for eligibility and valid settings',
        required => '0',
    },
    'activity_occurrence_resource' => {
        data_type => 'ActivityOccurrenceResource',
        description => 'The activity occurrence object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_activity_occurrence' } = { 
    	summary => 'Create a new activity occurrence',
        params => $params,
        returns => 'ActivityOccurrenceResource',
        };
}
# @return ActivityOccurrenceResource
#
sub create_activity_occurrence {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/activity-occurrences';
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

    # query params
    if ( exists $args{'test'}) {
        $query_params->{'test'} = $self->{api_client}->to_query_value($args{'test'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'activity_occurrence_resource'}) {
        $_body_data = $args{'activity_occurrence_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ActivityOccurrenceResource', $response);
    return $_response_object;
}

#
# delete_activity
#
# Delete an activity
# 
# @param int $id The id of the activity (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the activity',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_activity' } = { 
    	summary => 'Delete an activity',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_activity {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_activity");
    }

    # parse inputs
    my $_resource_path = '/activities/{id}';
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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

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
# get_activities
#
# List activity definitions
# 
# @param boolean $filter_template Filter for activities that are templates, or specifically not if false (optional)
# @param string $filter_name Filter for activities that have a name starting with specified string (optional)
# @param string $filter_id Filter for activities with an id in the given comma separated list of ids (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_template' => {
        data_type => 'boolean',
        description => 'Filter for activities that are templates, or specifically not if false',
        required => '0',
    },
    'filter_name' => {
        data_type => 'string',
        description => 'Filter for activities that have a name starting with specified string',
        required => '0',
    },
    'filter_id' => {
        data_type => 'string',
        description => 'Filter for activities with an id in the given comma separated list of ids',
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
    __PACKAGE__->method_documentation->{ 'get_activities' } = { 
    	summary => 'List activity definitions',
        params => $params,
        returns => 'PageResourceBareActivityResource',
        };
}
# @return PageResourceBareActivityResource
#
sub get_activities {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/activities';
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
    if ( exists $args{'filter_template'}) {
        $query_params->{'filter_template'} = $self->{api_client}->to_query_value($args{'filter_template'});
    }

    # query params
    if ( exists $args{'filter_name'}) {
        $query_params->{'filter_name'} = $self->{api_client}->to_query_value($args{'filter_name'});
    }

    # query params
    if ( exists $args{'filter_id'}) {
        $query_params->{'filter_id'} = $self->{api_client}->to_query_value($args{'filter_id'});
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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceBareActivityResource', $response);
    return $_response_object;
}

#
# get_activity
#
# Get a single activity
# 
# @param int $id The id of the activity (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the activity',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_activity' } = { 
    	summary => 'Get a single activity',
        params => $params,
        returns => 'ActivityResource',
        };
}
# @return ActivityResource
#
sub get_activity {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_activity");
    }

    # parse inputs
    my $_resource_path = '/activities/{id}';
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
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ActivityResource', $response);
    return $_response_object;
}

#
# set_activity_occurrence_results
#
# Sets the status of an activity occurrence to FINISHED and logs metrics
# 
# @param int $activity_occurrence_id The id of the activity occurrence (required)
# @param ActivityOccurrenceResults $activity_occurrence_results The activity occurrence object (optional)
{
    my $params = {
    'activity_occurrence_id' => {
        data_type => 'int',
        description => 'The id of the activity occurrence',
        required => '1',
    },
    'activity_occurrence_results' => {
        data_type => 'ActivityOccurrenceResults',
        description => 'The activity occurrence object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'set_activity_occurrence_results' } = { 
    	summary => 'Sets the status of an activity occurrence to FINISHED and logs metrics',
        params => $params,
        returns => 'ActivityOccurrenceResults',
        };
}
# @return ActivityOccurrenceResults
#
sub set_activity_occurrence_results {
    my ($self, %args) = @_;

    # verify the required parameter 'activity_occurrence_id' is set
    unless (exists $args{'activity_occurrence_id'}) {
      croak("Missing the required parameter 'activity_occurrence_id' when calling set_activity_occurrence_results");
    }

    # parse inputs
    my $_resource_path = '/activity-occurrences/{activity_occurrence_id}/results';
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

    # path params
    if ( exists $args{'activity_occurrence_id'}) {
        my $_base_variable = "{" . "activity_occurrence_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'activity_occurrence_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'activity_occurrence_results'}) {
        $_body_data = $args{'activity_occurrence_results'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ActivityOccurrenceResults', $response);
    return $_response_object;
}

#
# update_activity
#
# Update an activity
# 
# @param int $id The id of the activity (required)
# @param ActivityResource $activity_resource The activity resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the activity',
        required => '1',
    },
    'activity_resource' => {
        data_type => 'ActivityResource',
        description => 'The activity resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_activity' } = { 
    	summary => 'Update an activity',
        params => $params,
        returns => 'ActivityResource',
        };
}
# @return ActivityResource
#
sub update_activity {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_activity");
    }

    # parse inputs
    my $_resource_path = '/activities/{id}';
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
    if ( exists $args{'activity_resource'}) {
        $_body_data = $args{'activity_resource'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ActivityResource', $response);
    return $_response_object;
}

#
# update_activity_occurrence
#
# Updated the status of an activity occurrence
# 
# @param int $activity_occurrence_id The id of the activity occurrence (required)
# @param string $activity_cccurrence_status The activity occurrence status object (optional)
{
    my $params = {
    'activity_occurrence_id' => {
        data_type => 'int',
        description => 'The id of the activity occurrence',
        required => '1',
    },
    'activity_cccurrence_status' => {
        data_type => 'string',
        description => 'The activity occurrence status object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_activity_occurrence' } = { 
    	summary => 'Updated the status of an activity occurrence',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_activity_occurrence {
    my ($self, %args) = @_;

    # verify the required parameter 'activity_occurrence_id' is set
    unless (exists $args{'activity_occurrence_id'}) {
      croak("Missing the required parameter 'activity_occurrence_id' when calling update_activity_occurrence");
    }

    # parse inputs
    my $_resource_path = '/activity-occurrences/{activity_occurrence_id}/status';
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
    if ( exists $args{'activity_occurrence_id'}) {
        my $_base_variable = "{" . "activity_occurrence_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'activity_occurrence_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'activity_cccurrence_status'}) {
        $_body_data = $args{'activity_cccurrence_status'};
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
