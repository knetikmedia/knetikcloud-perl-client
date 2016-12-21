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

use_ok('WWW::SwaggerClient::UtilMaintenanceApi');

my $api = WWW::SwaggerClient::UtilMaintenanceApi->new();
isa_ok($api, 'WWW::SwaggerClient::UtilMaintenanceApi');

#
# delete_using_delete1 test
#
{
    my $result = $api->delete_using_delete1();
}

#
# get_using_get1 test
#
{
    my $result = $api->get_using_get1();
}

#
# post_using_post test
#
{
    my $maintenance = undef; # replace NULL with a proper value
    my $result = $api->post_using_post(maintenance => $maintenance);
}

#
# post_using_put test
#
{
    my $maintenance = undef; # replace NULL with a proper value
    my $result = $api->post_using_put(maintenance => $maintenance);
}


1;