=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com

OpenAPI spec version: latest 
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

use_ok('WWW::SwaggerClient::CurrenciesApi');

my $api = WWW::SwaggerClient::CurrenciesApi->new();
isa_ok($api, 'WWW::SwaggerClient::CurrenciesApi');

#
# create_currency test
#
{
    my $currency = undef; # replace NULL with a proper value
    my $result = $api->create_currency(currency => $currency);
}

#
# delete_currency test
#
{
    my $code = undef; # replace NULL with a proper value
    my $result = $api->delete_currency(code => $code);
}

#
# get_currencies test
#
{
    my $filter_enabled_currencies = undef; # replace NULL with a proper value
    my $filter_type = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_currencies(filter_enabled_currencies => $filter_enabled_currencies, filter_type => $filter_type, size => $size, page => $page, order => $order);
}

#
# get_currency test
#
{
    my $code = undef; # replace NULL with a proper value
    my $result = $api->get_currency(code => $code);
}

#
# update_currency test
#
{
    my $code = undef; # replace NULL with a proper value
    my $currency = undef; # replace NULL with a proper value
    my $result = $api->update_currency(code => $code, currency => $currency);
}


1;
