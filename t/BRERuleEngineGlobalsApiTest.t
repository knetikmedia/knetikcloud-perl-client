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

use_ok('WWW::SwaggerClient::BRERuleEngineGlobalsApi');

my $api = WWW::SwaggerClient::BRERuleEngineGlobalsApi->new();
isa_ok($api, 'WWW::SwaggerClient::BRERuleEngineGlobalsApi');

#
# create_global_using_post test
#
{
    my $bre_global_resource = undef; # replace NULL with a proper value
    my $result = $api->create_global_using_post(bre_global_resource => $bre_global_resource);
}

#
# delete_global_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_global_using_delete(id => $id);
}

#
# get_global_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_global_using_get(id => $id);
}

#
# get_globals_using_get test
#
{
    my $filter_system = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_globals_using_get(filter_system => $filter_system, size => $size, page => $page);
}

#
# update_global_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $bre_global_resource = undef; # replace NULL with a proper value
    my $result = $api->update_global_using_put(id => $id, bre_global_resource => $bre_global_resource);
}


1;