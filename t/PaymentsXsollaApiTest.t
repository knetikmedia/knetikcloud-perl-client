=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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

use_ok('WWW::SwaggerClient::PaymentsXsollaApi');

my $api = WWW::SwaggerClient::PaymentsXsollaApi->new();
isa_ok($api, 'WWW::SwaggerClient::PaymentsXsollaApi');

#
# create_token_url_using_post test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->create_token_url_using_post(request => $request);
}

#
# receive_notification_using_post test
#
{
    my $result = $api->receive_notification_using_post();
}


1;
