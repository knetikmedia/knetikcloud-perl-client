=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

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

use_ok('KnetikCloud::PaymentsPayPalClassicApi');

my $api = KnetikCloud::PaymentsPayPalClassicApi->new();
isa_ok($api, 'KnetikCloud::PaymentsPayPalClassicApi');

#
# create_pay_pal_billing_agreement_url test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->create_pay_pal_billing_agreement_url(request => $request);
}

#
# create_pay_pal_express_checkout test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->create_pay_pal_express_checkout(request => $request);
}

#
# finalize_pay_pal_billing_agreement test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->finalize_pay_pal_billing_agreement(request => $request);
}

#
# finalize_pay_pal_checkout test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->finalize_pay_pal_checkout(request => $request);
}


1;
