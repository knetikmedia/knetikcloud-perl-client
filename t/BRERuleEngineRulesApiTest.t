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

use_ok('KnetikCloud::BRERuleEngineRulesApi');

my $api = KnetikCloud::BRERuleEngineRulesApi->new();
isa_ok($api, 'KnetikCloud::BRERuleEngineRulesApi');

#
# create_bre_rule test
#
{
    my $bre_rule = undef; # replace NULL with a proper value
    my $result = $api->create_bre_rule(bre_rule => $bre_rule);
}

#
# delete_bre_rule test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_bre_rule(id => $id);
}

#
# get_bre_expression_as_string test
#
{
    my $expression = undef; # replace NULL with a proper value
    my $result = $api->get_bre_expression_as_string(expression => $expression);
}

#
# get_bre_rule test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_bre_rule(id => $id);
}

#
# get_bre_rules test
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
    my $result = $api->get_bre_rules(filter_name => $filter_name, filter_enabled => $filter_enabled, filter_system => $filter_system, filter_trigger => $filter_trigger, filter_action => $filter_action, filter_condition => $filter_condition, size => $size, page => $page);
}

#
# set_bre_rule test
#
{
    my $id = undef; # replace NULL with a proper value
    my $enabled = undef; # replace NULL with a proper value
    my $result = $api->set_bre_rule(id => $id, enabled => $enabled);
}

#
# update_bre_rule test
#
{
    my $id = undef; # replace NULL with a proper value
    my $bre_rule = undef; # replace NULL with a proper value
    my $result = $api->update_bre_rule(id => $id, bre_rule => $bre_rule);
}


1;