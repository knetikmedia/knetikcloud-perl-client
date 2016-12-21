=begin comment

Knetik Platform API Documentation Latest

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

OpenAPI spec version: Latest
Contact: support@knetik.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::LocationsApi');

my $api = WWW::SwaggerClient::LocationsApi->new();
isa_ok($api, 'WWW::SwaggerClient::LocationsApi');

#
# cities_using_get test
#
{
    my $country_code_iso3 = undef; # replace NULL with a proper value
    my $state_code = undef; # replace NULL with a proper value
    my $result = $api->cities_using_get(country_code_iso3 => $country_code_iso3, state_code => $state_code);
}

#
# countries_using_get test
#
{
    my $result = $api->countries_using_get();
}

#
# get_currency_by_geo_location_using_get test
#
{
    my $result = $api->get_currency_by_geo_location_using_get();
}

#
# get_geo_location_country_using_get test
#
{
    my $result = $api->get_geo_location_country_using_get();
}

#
# states_using_get test
#
{
    my $country_code_iso3 = undef; # replace NULL with a proper value
    my $result = $api->states_using_get(country_code_iso3 => $country_code_iso3);
}


1;