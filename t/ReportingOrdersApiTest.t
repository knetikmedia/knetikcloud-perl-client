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

use_ok('WWW::SwaggerClient::ReportingOrdersApi');

my $api = WWW::SwaggerClient::ReportingOrdersApi->new();
isa_ok($api, 'WWW::SwaggerClient::ReportingOrdersApi');

#
# get_daily_invoices_using_get test
#
{
    my $currency_code = undef; # replace NULL with a proper value
    my $granularity = undef; # replace NULL with a proper value
    my $filter_payment_status = undef; # replace NULL with a proper value
    my $filter_fulfillment_status = undef; # replace NULL with a proper value
    my $start_date = undef; # replace NULL with a proper value
    my $end_date = undef; # replace NULL with a proper value
    my $result = $api->get_daily_invoices_using_get(currency_code => $currency_code, granularity => $granularity, filter_payment_status => $filter_payment_status, filter_fulfillment_status => $filter_fulfillment_status, start_date => $start_date, end_date => $end_date);
}


1;