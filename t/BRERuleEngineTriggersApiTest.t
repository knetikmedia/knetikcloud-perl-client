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

use_ok('WWW::SwaggerClient::BRERuleEngineTriggersApi');

my $api = WWW::SwaggerClient::BRERuleEngineTriggersApi->new();
isa_ok($api, 'WWW::SwaggerClient::BRERuleEngineTriggersApi');

#
# create_trigger_using_post test
#
{
    my $bre_trigger_resource = undef; # replace NULL with a proper value
    my $result = $api->create_trigger_using_post(bre_trigger_resource => $bre_trigger_resource);
}

#
# delete_trigger_using_delete test
#
{
    my $event_name = undef; # replace NULL with a proper value
    my $result = $api->delete_trigger_using_delete(event_name => $event_name);
}

#
# get_trigger_using_get test
#
{
    my $event_name = undef; # replace NULL with a proper value
    my $result = $api->get_trigger_using_get(event_name => $event_name);
}

#
# get_triggers_using_get test
#
{
    my $filter_system = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_triggers_using_get(filter_system => $filter_system, filter_category => $filter_category, filter_name => $filter_name, size => $size, page => $page);
}

#
# update_trigger_using_put test
#
{
    my $event_name = undef; # replace NULL with a proper value
    my $bre_trigger_resource = undef; # replace NULL with a proper value
    my $result = $api->update_trigger_using_put(event_name => $event_name, bre_trigger_resource => $bre_trigger_resource);
}


1;