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
package WWW::SwaggerClient::CurrenciesApi;

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
# create_currency
#
# Create a currency
# 
# @param CurrencyResource $currency The currency object (optional)
{
    my $params = {
    'currency' => {
        data_type => 'CurrencyResource',
        description => 'The currency object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_currency' } = { 
    	summary => 'Create a currency',
        params => $params,
        returns => 'CurrencyResource',
        };
}
# @return CurrencyResource
#
sub create_currency {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/currencies';
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
    if ( exists $args{'currency'}) {
        $_body_data = $args{'currency'};
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
    my $_response_object = $self->{api_client}->deserialize('CurrencyResource', $response);
    return $_response_object;
}

#
# delete_currency
#
# Delete a currency
# 
# @param string $code The currency code (required)
{
    my $params = {
    'code' => {
        data_type => 'string',
        description => 'The currency code',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_currency' } = { 
    	summary => 'Delete a currency',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_currency {
    my ($self, %args) = @_;

    # verify the required parameter 'code' is set
    unless (exists $args{'code'}) {
      croak("Missing the required parameter 'code' when calling delete_currency");
    }

    # parse inputs
    my $_resource_path = '/currencies/{code}';
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
    if ( exists $args{'code'}) {
        my $_base_variable = "{" . "code" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'code'});
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
# get_currencies
#
# List and search currencies
# 
# @param boolean $filter_enabled_currencies Filter for alternate currencies setup explicitely in system config (optional)
# @param string $filter_type Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;) (optional)
# @param int $size The number of objects returned per page (optional, default to 25)
# @param int $page The number of the page returned, starting with 1 (optional, default to 1)
# @param string $order A comma separated list of sorting requirements in priority order, each entry matching PROPERTY_NAME:[ASC|DESC] (optional, default to name:ASC)
{
    my $params = {
    'filter_enabled_currencies' => {
        data_type => 'boolean',
        description => 'Filter for alternate currencies setup explicitely in system config',
        required => '0',
    },
    'filter_type' => {
        data_type => 'string',
        description => 'Filter currencies by type.  Allowable values: (&#39;virtual&#39;, &#39;real&#39;)',
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
    __PACKAGE__->method_documentation->{ 'get_currencies' } = { 
    	summary => 'List and search currencies',
        params => $params,
        returns => 'PageResourceCurrencyResource',
        };
}
# @return PageResourceCurrencyResource
#
sub get_currencies {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/currencies';
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
    if ( exists $args{'filter_enabled_currencies'}) {
        $query_params->{'filter_enabled_currencies'} = $self->{api_client}->to_query_value($args{'filter_enabled_currencies'});
    }

    # query params
    if ( exists $args{'filter_type'}) {
        $query_params->{'filter_type'} = $self->{api_client}->to_query_value($args{'filter_type'});
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
    my $_response_object = $self->{api_client}->deserialize('PageResourceCurrencyResource', $response);
    return $_response_object;
}

#
# get_currency
#
# Get a single currency
# 
# @param string $code The currency code (required)
{
    my $params = {
    'code' => {
        data_type => 'string',
        description => 'The currency code',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_currency' } = { 
    	summary => 'Get a single currency',
        params => $params,
        returns => 'CurrencyResource',
        };
}
# @return CurrencyResource
#
sub get_currency {
    my ($self, %args) = @_;

    # verify the required parameter 'code' is set
    unless (exists $args{'code'}) {
      croak("Missing the required parameter 'code' when calling get_currency");
    }

    # parse inputs
    my $_resource_path = '/currencies/{code}';
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
    if ( exists $args{'code'}) {
        my $_base_variable = "{" . "code" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'code'});
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
    my $_response_object = $self->{api_client}->deserialize('CurrencyResource', $response);
    return $_response_object;
}

#
# update_currency
#
# Update a currency
# 
# @param string $code The currency code (required)
# @param CurrencyResource $currency The currency object (optional)
{
    my $params = {
    'code' => {
        data_type => 'string',
        description => 'The currency code',
        required => '1',
    },
    'currency' => {
        data_type => 'CurrencyResource',
        description => 'The currency object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_currency' } = { 
    	summary => 'Update a currency',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_currency {
    my ($self, %args) = @_;

    # verify the required parameter 'code' is set
    unless (exists $args{'code'}) {
      croak("Missing the required parameter 'code' when calling update_currency");
    }

    # parse inputs
    my $_resource_path = '/currencies/{code}';
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
    if ( exists $args{'code'}) {
        my $_base_variable = "{" . "code" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'code'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'currency'}) {
        $_body_data = $args{'currency'};
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
