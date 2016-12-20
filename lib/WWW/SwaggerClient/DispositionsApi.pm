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
package WWW::SwaggerClient::DispositionsApi;

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
# add_disposition_using_post
#
# Add a new disposition. 
# 
# @param DispositionResource $disposition The new disposition record (optional)
{
    my $params = {
    'disposition' => {
        data_type => 'DispositionResource',
        description => 'The new disposition record',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'add_disposition_using_post' } = { 
    	summary => 'Add a new disposition. ',
        params => $params,
        returns => 'DispositionResource',
        };
}
# @return DispositionResource
#
sub add_disposition_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/dispositions';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'disposition'}) {
        $_body_data = $args{'disposition'};
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
    my $_response_object = $self->{api_client}->deserialize('DispositionResource', $response);
    return $_response_object;
}

#
# delete_disposition_using_delete
#
# Delete a disposition
# 
# @param int $id The id of the disposition record (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the disposition record',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_disposition_using_delete' } = { 
    	summary => 'Delete a disposition',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_disposition_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_disposition_using_delete");
    }

    # parse inputs
    my $_resource_path = '/dispositions/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
# get_disposition_count_using_get
#
# Returns a list of disposition counts
# 
# @param string $filter_context Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 (optional)
# @param string $filter_owner Filter for dispositions from a specific user by id or &#39;me&#39; (optional)
{
    my $params = {
    'filter_context' => {
        data_type => 'string',
        description => 'Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47',
        required => '0',
    },
    'filter_owner' => {
        data_type => 'string',
        description => 'Filter for dispositions from a specific user by id or &#39;me&#39;',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_disposition_count_using_get' } = { 
    	summary => 'Returns a list of disposition counts',
        params => $params,
        returns => 'ARRAY[DispositionCount]',
        };
}
# @return ARRAY[DispositionCount]
#
sub get_disposition_count_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/dispositions/count';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'filter_context'}) {
        $query_params->{'filter_context'} = $self->{api_client}->to_query_value($args{'filter_context'});
    }

    # query params
    if ( exists $args{'filter_owner'}) {
        $query_params->{'filter_owner'} = $self->{api_client}->to_query_value($args{'filter_owner'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[DispositionCount]', $response);
    return $_response_object;
}

#
# get_disposition_using_get
#
# Returns a disposition
# 
# @param int $id The id of the disposition record (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the disposition record',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_disposition_using_get' } = { 
    	summary => 'Returns a disposition',
        params => $params,
        returns => 'DispositionResource',
        };
}
# @return DispositionResource
#
sub get_disposition_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_disposition_using_get");
    }

    # parse inputs
    my $_resource_path = '/dispositions/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
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
    my $_response_object = $self->{api_client}->deserialize('DispositionResource', $response);
    return $_response_object;
}

#
# get_dispositions_using_get
#
# Returns a page of dispositions
# 
# @param string $filter_context Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47 (optional)
# @param string $filter_owner Filter for dispositions from a specific user by id or &#39;me&#39; (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_context' => {
        data_type => 'string',
        description => 'Filter for dispositions within a context type (games, articles, polls, etc). Optionally with a specific id like filter_context&#x3D;video:47',
        required => '0',
    },
    'filter_owner' => {
        data_type => 'string',
        description => 'Filter for dispositions from a specific user by id or &#39;me&#39;',
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
    __PACKAGE__->method_documentation->{ 'get_dispositions_using_get' } = { 
    	summary => 'Returns a page of dispositions',
        params => $params,
        returns => 'PageDispositionResource',
        };
}
# @return PageDispositionResource
#
sub get_dispositions_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/dispositions';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('*/*');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'filter_context'}) {
        $query_params->{'filter_context'} = $self->{api_client}->to_query_value($args{'filter_context'});
    }

    # query params
    if ( exists $args{'filter_owner'}) {
        $query_params->{'filter_owner'} = $self->{api_client}->to_query_value($args{'filter_owner'});
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
    my $_response_object = $self->{api_client}->deserialize('PageDispositionResource', $response);
    return $_response_object;
}

1;
