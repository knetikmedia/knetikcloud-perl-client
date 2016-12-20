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
package WWW::SwaggerClient::LocationsApi;

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
# cities_using_get
#
# Get a list of a state's cities
# 
# @param string $country_code_iso3 The iso3 code of the country (required)
# @param string $state_code The code of the state (required)
{
    my $params = {
    'country_code_iso3' => {
        data_type => 'string',
        description => 'The iso3 code of the country',
        required => '1',
    },
    'state_code' => {
        data_type => 'string',
        description => 'The code of the state',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'cities_using_get' } = { 
    	summary => 'Get a list of a state&#39;s cities',
        params => $params,
        returns => 'ARRAY[CityResource]',
        };
}
# @return ARRAY[CityResource]
#
sub cities_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'country_code_iso3' is set
    unless (exists $args{'country_code_iso3'}) {
      croak("Missing the required parameter 'country_code_iso3' when calling cities_using_get");
    }

    # verify the required parameter 'state_code' is set
    unless (exists $args{'state_code'}) {
      croak("Missing the required parameter 'state_code' when calling cities_using_get");
    }

    # parse inputs
    my $_resource_path = '/location/countries/{country_code_iso3}/states/{state_code}/cities';
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
    if ( exists $args{'country_code_iso3'}) {
        my $_base_variable = "{" . "country_code_iso3" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'country_code_iso3'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'state_code'}) {
        my $_base_variable = "{" . "state_code" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'state_code'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[CityResource]', $response);
    return $_response_object;
}

#
# countries_using_get
#
# Get a list of countries
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'countries_using_get' } = { 
    	summary => 'Get a list of countries',
        params => $params,
        returns => 'ARRAY[CountryResource]',
        };
}
# @return ARRAY[CountryResource]
#
sub countries_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/location/countries';
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[CountryResource]', $response);
    return $_response_object;
}

#
# get_currency_by_geo_location_using_get
#
# Get the currency information of your country
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_currency_by_geo_location_using_get' } = { 
    	summary => 'Get the currency information of your country',
        params => $params,
        returns => 'CurrencyResource',
        };
}
# @return CurrencyResource
#
sub get_currency_by_geo_location_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/location/geolocation/currency';
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
# get_geo_location_country_using_get
#
# Get the iso3 code of your country
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_geo_location_country_using_get' } = { 
    	summary => 'Get the iso3 code of your country',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub get_geo_location_country_using_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/location/geolocation/country';
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# states_using_get
#
# Get a list of a country's states
# 
# @param string $country_code_iso3 The iso3 code of the country (required)
{
    my $params = {
    'country_code_iso3' => {
        data_type => 'string',
        description => 'The iso3 code of the country',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'states_using_get' } = { 
    	summary => 'Get a list of a country&#39;s states',
        params => $params,
        returns => 'ARRAY[StateResource]',
        };
}
# @return ARRAY[StateResource]
#
sub states_using_get {
    my ($self, %args) = @_;

    # verify the required parameter 'country_code_iso3' is set
    unless (exists $args{'country_code_iso3'}) {
      croak("Missing the required parameter 'country_code_iso3' when calling states_using_get");
    }

    # parse inputs
    my $_resource_path = '/location/countries/{country_code_iso3}/states';
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
    if ( exists $args{'country_code_iso3'}) {
        my $_base_variable = "{" . "country_code_iso3" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'country_code_iso3'});
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[StateResource]', $response);
    return $_response_object;
}

1;
