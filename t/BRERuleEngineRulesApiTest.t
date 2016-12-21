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

use_ok('WWW::SwaggerClient::BRERuleEngineRulesApi');

my $api = WWW::SwaggerClient::BRERuleEngineRulesApi->new();
isa_ok($api, 'WWW::SwaggerClient::BRERuleEngineRulesApi');

#
# convert_expression_to_string_using_post test
#
{
    my $expression = undef; # replace NULL with a proper value
    my $result = $api->convert_expression_to_string_using_post(expression => $expression);
}

#
# create_rule_using_post test
#
{
    my $bre_rule = undef; # replace NULL with a proper value
    my $result = $api->create_rule_using_post(bre_rule => $bre_rule);
}

#
# delete_rule_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_rule_using_delete(id => $id);
}

#
# enable_rule_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $enabled = undef; # replace NULL with a proper value
    my $result = $api->enable_rule_using_put(id => $id, enabled => $enabled);
}

#
# get_rule_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_rule_using_get(id => $id);
}

#
# get_rules_using_get test
#
{
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_enabled = undef; # replace NULL with a proper value
    my $filter_system = undef; # replace NULL with a proper value
    my $filter_trigger = undef; # replace NULL with a proper value
    my $filter_action = undef; # replace NULL with a proper value
    my $filter_condition = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_rules_using_get(filter_name => $filter_name, filter_enabled => $filter_enabled, filter_system => $filter_system, filter_trigger => $filter_trigger, filter_action => $filter_action, filter_condition => $filter_condition, size => $size, page => $page);
}

#
# update_rule_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $bre_rule = undef; # replace NULL with a proper value
    my $result = $api->update_rule_using_put(id => $id, bre_rule => $bre_rule);
}


1;