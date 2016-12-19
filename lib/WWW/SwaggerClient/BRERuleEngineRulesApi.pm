=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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
package WWW::SwaggerClient::BRERuleEngineRulesApi;

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
# convert_expression_to_string_using_post
#
# Returns a string representation of the provided expression
# 
# @param Expressionobject $expression The expression (optional)
{
    my $params = {
    'expression' => {
        data_type => 'Expressionobject',
        description => 'The expression',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'convert_expression_to_string_using_post' } = { 
    	summary => 'Returns a string representation of the provided expression',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub convert_expression_to_string_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/rules/expression-as-string';
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
    if ( exists $args{'expression'}) {
        $_body_data = $args{'expression'};
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# create_rule_using_post
#
# Create a rule
# 
# @param BreRule $bre_rule The BRE rule object (optional)
{
    my $params = {
    'bre_rule' => {
        data_type => 'BreRule',
        description => 'The BRE rule object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_rule_using_post' } = { 
    	summary => 'Create a rule',
        params => $params,
        returns => 'BreRule',
        };
}
# @return BreRule
#
sub create_rule_using_post {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/rules';
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
    if ( exists $args{'bre_rule'}) {
        $_body_data = $args{'bre_rule'};
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
    my $_response_object = $self->{api_client}->deserialize('BreRule', $response);
    return $_response_object;
}

#
# delete_rule_using_delete
#
# Delete a rule
# 
# @param string $id The id of the rule (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the rule',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_rule_using_delete' } = { 
    	summary => 'Delete a rule',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_rule_using_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_rule_using_delete");
    }

    # parse inputs
    my $_resource_path = '/bre/rules/{id}';
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
# enable_rule_using_put
#
# Enable or disable a rule
# 
# @param string $id The id of the rule (required)
# @param BooleanResource $enabled The boolean value (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the rule',
        required => '1',
    },
    'enabled' => {
        data_type => 'BooleanResource',
        description => 'The boolean value',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'enable_rule_using_put' } = { 
    	summary => 'Enable or disable a rule',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub enable_rule_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling enable_rule_using_put");
    }

    # parse inputs
    my $_resource_path = '/bre/rules/{id}/enabled';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
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
    # body params
    if ( exists $args{'enabled'}) {
        $_body_data = $args{'enabled'};
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
# get_rule_using_get
#
# Get a single rule
# 
# @param string $id The id of the rule (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the rule',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_rule_using_get' } = { 
    	summary => 'Get a single rule',
        params => $params,
        returns => 'BreRule',
        };
}
# @return BreRule
#
sub get_rule_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_rule_using_get");
    }

    # parse inputs
    my $_resource_path = '/bre/rules/{id}';
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('BreRule', $response);
    return $_response_object;
}

#
# get_rules_using_get
#
# List rules
# 
# @param string $filter_name Filter for rules containing the given name (optional)
# @param boolean $filter_enabled Filter for rules by active status, null for both (optional, default to null)
# @param boolean $filter_system Filter for rules that are system rules when true, or not when false. Leave off for both mixed (optional)
# @param string $filter_trigger Filter for rules that are for the trigger with the given name (optional)
# @param string $filter_action Filter for rules that use the action with the given name (optional)
# @param string $filter_condition Filter for rules that have a condition containing the given string (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
{
    my $params = {
    'filter_name' => {
        data_type => 'string',
        description => 'Filter for rules containing the given name',
        required => '0',
    },
    'filter_enabled' => {
        data_type => 'boolean',
        description => 'Filter for rules by active status, null for both',
        required => '0',
    },
    'filter_system' => {
        data_type => 'boolean',
        description => 'Filter for rules that are system rules when true, or not when false. Leave off for both mixed',
        required => '0',
    },
    'filter_trigger' => {
        data_type => 'string',
        description => 'Filter for rules that are for the trigger with the given name',
        required => '0',
    },
    'filter_action' => {
        data_type => 'string',
        description => 'Filter for rules that use the action with the given name',
        required => '0',
    },
    'filter_condition' => {
        data_type => 'string',
        description => 'Filter for rules that have a condition containing the given string',
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
    __PACKAGE__->method_documentation->{ 'get_rules_using_get' } = { 
    	summary => 'List rules',
        params => $params,
        returns => 'PageBreRule',
        };
}
# @return PageBreRule
#
sub get_rules_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/bre/rules';
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
    if ( exists $args{'filter_name'}) {
        $query_params->{'filter_name'} = $self->{api_client}->to_query_value($args{'filter_name'});
    }

    # query params
    if ( exists $args{'filter_enabled'}) {
        $query_params->{'filter_enabled'} = $self->{api_client}->to_query_value($args{'filter_enabled'});
    }

    # query params
    if ( exists $args{'filter_system'}) {
        $query_params->{'filter_system'} = $self->{api_client}->to_query_value($args{'filter_system'});
    }

    # query params
    if ( exists $args{'filter_trigger'}) {
        $query_params->{'filter_trigger'} = $self->{api_client}->to_query_value($args{'filter_trigger'});
    }

    # query params
    if ( exists $args{'filter_action'}) {
        $query_params->{'filter_action'} = $self->{api_client}->to_query_value($args{'filter_action'});
    }

    # query params
    if ( exists $args{'filter_condition'}) {
        $query_params->{'filter_condition'} = $self->{api_client}->to_query_value($args{'filter_condition'});
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
    my $auth_settings = [qw(OAuth2 )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PageBreRule', $response);
    return $_response_object;
}

#
# update_rule_using_put
#
# Update a rule
# 
# @param string $id The id of the rule (required)
# @param BreRule $bre_rule The BRE rule object (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'The id of the rule',
        required => '1',
    },
    'bre_rule' => {
        data_type => 'BreRule',
        description => 'The BRE rule object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_rule_using_put' } = { 
    	summary => 'Update a rule',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_rule_using_put {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_rule_using_put");
    }

    # parse inputs
    my $_resource_path = '/bre/rules/{id}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
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
    # body params
    if ( exists $args{'bre_rule'}) {
        $_body_data = $args{'bre_rule'};
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
