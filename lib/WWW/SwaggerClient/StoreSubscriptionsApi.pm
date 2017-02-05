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
package WWW::SwaggerClient::StoreSubscriptionsApi;

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
# create_subscription_template_using_post
#
# Create a subscription template
# 
# @param SubscriptionTemplateResource $subscription_template_resource The new subscription template (optional)
{
    my $params = {
    'subscription_template_resource' => {
        data_type => 'SubscriptionTemplateResource',
        description => 'The new subscription template',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_subscription_template_using_post' } = { 
    	summary => 'Create a subscription template',
        params => $params,
        returns => 'SubscriptionTemplateResource',
        };
}
# @return SubscriptionTemplateResource
#
sub create_subscription_template_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/subscriptions/templates';
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
    if ( exists $args{'subscription_template_resource'}) {
        $_body_data = $args{'subscription_template_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('SubscriptionTemplateResource', $response);
    return $_response_object;
}

#
# create_subscription_using_post
#
# Creates a subscription item and associated plans
# 
# @param SubscriptionResource $subscription_resource The subscription to be created (optional)
{
    my $params = {
    'subscription_resource' => {
        data_type => 'SubscriptionResource',
        description => 'The subscription to be created',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_subscription_using_post' } = { 
    	summary => 'Creates a subscription item and associated plans',
        params => $params,
        returns => 'SubscriptionResource',
        };
}
# @return SubscriptionResource
#
sub create_subscription_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/subscriptions';
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
    if ( exists $args{'subscription_resource'}) {
        $_body_data = $args{'subscription_resource'};
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
    my $_response_object = $self->{api_client}->deserialize('SubscriptionResource', $response);
    return $_response_object;
}

#
# delete_plan_using_delete
#
# Delete a subscription plan
# 
# @param int $id The id of the subscription (required)
# @param string $plan_id The id of the plan (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the subscription',
        required => '1',
    },
    'plan_id' => {
        data_type => 'string',
        description => 'The id of the plan',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_plan_using_delete' } = { 
    	summary => 'Delete a subscription plan',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_plan_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_plan_using_delete");
    }

    # verify the required parameter 'plan_id' is set
    unless (exists $args{'plan_id'}) {
      croak("Missing the required parameter 'plan_id' when calling delete_plan_using_delete");
    }

    # parse inputs
    my $_resource_path = '/subscriptions/{id}/plans/{plan_id}';
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

    # path params
    if ( exists $args{'plan_id'}) {
        my $_base_variable = "{" . "plan_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'plan_id'});
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
# delete_subscription_template_using_delete
#
# Delete a subscription template
# 
# @param string $id The id of the template (required)
# @param string $cascade force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'cascade' => {
        data_type => 'string',
        description => 'force deleting the template if it&#39;s attached to other objects, cascade &#x3D; detach',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_subscription_template_using_delete' } = { 
    	summary => 'Delete a subscription template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_subscription_template_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_subscription_template_using_delete");
    }

    # parse inputs
    my $_resource_path = '/subscriptions/templates/{id}';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_subscription_template_using_get
#
# Get a single subscription template
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
    __PACKAGE__->method_documentation->{ 'get_subscription_template_using_get' } = { 
    	summary => 'Get a single subscription template',
        params => $params,
        returns => 'SubscriptionTemplateResource',
        };
}
# @return SubscriptionTemplateResource
#
sub get_subscription_template_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_subscription_template_using_get");
    }

    # parse inputs
    my $_resource_path = '/subscriptions/templates/{id}';
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
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SubscriptionTemplateResource', $response);
    return $_response_object;
}

#
# get_subscription_templates_using_get
#
# List and search subscription templates
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
    __PACKAGE__->method_documentation->{ 'get_subscription_templates_using_get' } = { 
    	summary => 'List and search subscription templates',
        params => $params,
        returns => 'PageResourceSubscriptionTemplateResource',
        };
}
# @return PageResourceSubscriptionTemplateResource
#
sub get_subscription_templates_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/subscriptions/templates';
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
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageResourceSubscriptionTemplateResource', $response);
    return $_response_object;
}

#
# get_subscription_using_get
#
# Retrieve a single subscription item and associated plans
# 
# @param int $id The id of the subscription (required)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the subscription',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_subscription_using_get' } = { 
    	summary => 'Retrieve a single subscription item and associated plans',
        params => $params,
        returns => 'SubscriptionResource',
        };
}
# @return SubscriptionResource
#
sub get_subscription_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_subscription_using_get");
    }

    # parse inputs
    my $_resource_path = '/subscriptions/{id}';
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
    my $_response_object = $self->{api_client}->deserialize('SubscriptionResource', $response);
    return $_response_object;
}

#
# list_subscriptions_using_get
#
# List available subscription items and associated plans
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
    __PACKAGE__->method_documentation->{ 'list_subscriptions_using_get' } = { 
    	summary => 'List available subscription items and associated plans',
        params => $params,
        returns => 'PageResourceSubscriptionResource',
        };
}
# @return PageResourceSubscriptionResource
#
sub list_subscriptions_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/subscriptions';
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceSubscriptionResource', $response);
    return $_response_object;
}

#
# process_using_post
#
# Processes subscriptions and charge dues
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'process_using_post' } = { 
    	summary => 'Processes subscriptions and charge dues',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub process_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/subscriptions/process';
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
    # authentication setting, if any
    my $auth_settings = [qw(knetik_oauth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_subscription_template_using_put
#
# Update a subscription template
# 
# @param string $id The id of the template (required)
# @param SubscriptionTemplateResource $subscription_template_resource The subscription template resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the template',
        required => '1',
    },
    'subscription_template_resource' => {
        data_type => 'SubscriptionTemplateResource',
        description => 'The subscription template resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_subscription_template_using_put' } = { 
    	summary => 'Update a subscription template',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_subscription_template_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_subscription_template_using_put");
    }

    # parse inputs
    my $_resource_path = '/subscriptions/templates/{id}';
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
    if ( exists $args{'subscription_template_resource'}) {
        $_body_data = $args{'subscription_template_resource'};
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
# update_subscription_using_put
#
# Updates a subscription item and associated plans
# 
# @param int $id The id of the subscription (required)
# @param SubscriptionResource $subscription_resource The subscription resource object (optional)
{
    my $params = {
    'id' => {
        data_type => 'int',
        description => 'The id of the subscription',
        required => '1',
    },
    'subscription_resource' => {
        data_type => 'SubscriptionResource',
        description => 'The subscription resource object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_subscription_using_put' } = { 
    	summary => 'Updates a subscription item and associated plans',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_subscription_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_subscription_using_put");
    }

    # parse inputs
    my $_resource_path = '/subscriptions/{id}';
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
    if ( exists $args{'subscription_resource'}) {
        $_body_data = $args{'subscription_resource'};
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
