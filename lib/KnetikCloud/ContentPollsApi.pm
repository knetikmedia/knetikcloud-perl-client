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
package KnetikCloud::ContentPollsApi;

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
# answer_poll
#
# Add your vote to a poll
# 
# @param string $id The poll id (required)
# @param StringWrapper $answer_key The answer key (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The poll id',
        required => '1',
    },
    'answer_key' => {
        data_type => 'StringWrapper',
        description => 'The answer key',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'answer_poll' } = { 
    	summary => 'Add your vote to a poll',
        params => $params,
        returns => 'PollResponseResource',
        };
}
# @return PollResponseResource
#
sub answer_poll {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling answer_poll");
    }

    # parse inputs
    my $_resource_path = '/media/polls/{id}/response';

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
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'answer_key'}) {
        $_body_data = $args{'answer_key'};
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
    my $_response_object = $self->{api_client}->deserialize('PollResponseResource', $response);
    return $_response_object;
}

#
# create_poll
#
# Create a new poll
# 
# @param PollResource $poll_resource The poll object (optional)
{
    my $params = {
    'poll_resource' => {
        data_type => 'PollResource',
        description => 'The poll object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_poll' } = { 
    	summary => 'Create a new poll',
        params => $params,
        returns => 'PollResource',
        };
}
# @return PollResource
#
sub create_poll {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/media/polls';

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
    if ( exists $args{'poll_resource'}) {
        $_body_data = $args{'poll_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('PollResource', $response);
    return $_response_object;
}

#
# create_poll_template
#
# Create a poll template
# 
# @param TemplateResource $poll_template_resource The poll template resource object (optional)
{
    my $params = {
    'poll_template_resource' => {
        data_type => 'TemplateResource',
        description => 'The poll template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_poll_template' } = { 
    	summary => 'Create a poll template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub create_poll_template {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/media/polls/templates';

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
    if ( exists $args{'poll_template_resource'}) {
        $_body_data = $args{'poll_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# delete_poll
#
# Delete an existing poll
# 
# @param string $id The poll id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The poll id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_poll' } = { 
    	summary => 'Delete an existing poll',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_poll {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_poll");
    }

    # parse inputs
    my $_resource_path = '/media/polls/{id}';

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
# delete_poll_template
#
# Delete a poll template
# 
# @param string $id The id of the template (required)
# @param string $cascade The value needed to delete used templates (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'cascade' => {
        data_type => 'string',
        description => 'The value needed to delete used templates',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_poll_template' } = { 
    	summary => 'Delete a poll template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_poll_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_poll_template");
    }

    # parse inputs
    my $_resource_path = '/media/polls/templates/{id}';

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

    # query params
    if ( exists $args{'cascade'}) {
        $query_params->{'cascade'} = $self->{api_client}->to_query_value($args{'cascade'});
    }

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
# get_poll
#
# Get a single poll
# 
# @param string $id The poll id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The poll id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_poll' } = { 
    	summary => 'Get a single poll',
        params => $params,
        returns => 'PollResource',
        };
}
# @return PollResource
#
sub get_poll {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_poll");
    }

    # parse inputs
    my $_resource_path = '/media/polls/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('PollResource', $response);
    return $_response_object;
}

#
# get_poll_answer
#
# Get poll answer
# 
# @param string $id The poll id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The poll id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_poll_answer' } = { 
    	summary => 'Get poll answer',
        params => $params,
        returns => 'PollResponseResource',
        };
}
# @return PollResponseResource
#
sub get_poll_answer {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_poll_answer");
    }

    # parse inputs
    my $_resource_path = '/media/polls/{id}/response';

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
    my $_response_object = $self->{api_client}->deserialize('PollResponseResource', $response);
    return $_response_object;
}

#
# get_poll_template
#
# Get a single poll template
# 
# @param string $id The id of the template (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_poll_template' } = { 
    	summary => 'Get a single poll template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub get_poll_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_poll_template");
    }

    # parse inputs
    my $_resource_path = '/media/polls/templates/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

#
# get_poll_templates
#
# List and search poll templates
# 
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
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
    __PACKAGE__->method_documentation->{ 'get_poll_templates' } = { 
    	summary => 'List and search poll templates',
        params => $params,
        returns => 'PageResourceTemplateResource',
        };
}
# @return PageResourceTemplateResource
#
sub get_poll_templates {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/media/polls/templates';

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
    my $_response_object = $self->{api_client}->deserialize('PageResourceTemplateResource', $response);
    return $_response_object;
}

#
# get_polls
#
# List and search polls
# 
# @param string $filter_category Filter for polls from a specific category by id (optional)
# @param string $filter_tagset Filter for polls with specified tags (separated by comma) (optional)
# @param string $filter_text Filter for polls whose text contains a string (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to id:ASC)
{
    my $params = {
    'filter_category' => {
        data_type => 'string',
        description => 'Filter for polls from a specific category by id',
        required => '0',
    },
    'filter_tagset' => {
        data_type => 'string',
        description => 'Filter for polls with specified tags (separated by comma)',
        required => '0',
    },
    'filter_text' => {
        data_type => 'string',
        description => 'Filter for polls whose text contains a string',
        required => '0',
    },
    'size' => {
        data_type => 'int',
        description => 'The number of objects returned per page',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'The number of the page returned',
        required => '0',
    },
    'order' => {
        data_type => 'string',
        description => 'A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC]',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_polls' } = { 
    	summary => 'List and search polls',
        params => $params,
        returns => 'PageResourcePollResource',
        };
}
# @return PageResourcePollResource
#
sub get_polls {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/media/polls';

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
    if ( exists $args{'filter_tagset'}) {
        $query_params->{'filter_tagset'} = $self->{api_client}->to_query_value($args{'filter_tagset'});
    }

    # query params
    if ( exists $args{'filter_text'}) {
        $query_params->{'filter_text'} = $self->{api_client}->to_query_value($args{'filter_text'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourcePollResource', $response);
    return $_response_object;
}

#
# update_poll
#
# Update an existing poll
# 
# @param string $id The poll id (required)
# @param PollResource $poll_resource The poll object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The poll id',
        required => '1',
    },
    'poll_resource' => {
        data_type => 'PollResource',
        description => 'The poll object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_poll' } = { 
    	summary => 'Update an existing poll',
        params => $params,
        returns => 'PollResource',
        };
}
# @return PollResource
#
sub update_poll {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_poll");
    }

    # parse inputs
    my $_resource_path = '/media/polls/{id}';

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
    if ( exists $args{'poll_resource'}) {
        $_body_data = $args{'poll_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('PollResource', $response);
    return $_response_object;
}

#
# update_poll_template
#
# Update a poll template
# 
# @param string $id The id of the template (required)
# @param TemplateResource $poll_template_resource The poll template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'poll_template_resource' => {
        data_type => 'TemplateResource',
        description => 'The poll template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_poll_template' } = { 
    	summary => 'Update a poll template',
        params => $params,
        returns => 'TemplateResource',
        };
}
# @return TemplateResource
#
sub update_poll_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_poll_template");
    }

    # parse inputs
    my $_resource_path = '/media/polls/templates/{id}';

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
    if ( exists $args{'poll_template_resource'}) {
        $_body_data = $args{'poll_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('TemplateResource', $response);
    return $_response_object;
}

1;
