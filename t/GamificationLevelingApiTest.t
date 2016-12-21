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

use_ok('WWW::SwaggerClient::GamificationLevelingApi');

my $api = WWW::SwaggerClient::GamificationLevelingApi->new();
isa_ok($api, 'WWW::SwaggerClient::GamificationLevelingApi');

#
# change_user_level_experience_using_put test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $name = undef; # replace NULL with a proper value
    my $progress = undef; # replace NULL with a proper value
    my $result = $api->change_user_level_experience_using_put(user_id => $user_id, name => $name, progress => $progress);
}

#
# create_level_using_post test
#
{
    my $level = undef; # replace NULL with a proper value
    my $result = $api->create_level_using_post(level => $level);
}

#
# delete_level_using_delete test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->delete_level_using_delete(name => $name);
}

#
# get_available_triggers_using_get1 test
#
{
    my $result = $api->get_available_triggers_using_get1();
}

#
# get_level_using_get test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_level_using_get(name => $name);
}

#
# get_levels_using_get test
#
{
    my $filter_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_levels_using_get(filter_name => $filter_name, size => $size, page => $page, order => $order);
}

#
# get_user_level_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_user_level_using_get(user_id => $user_id, name => $name);
}

#
# get_user_levels_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_user_levels_using_get(user_id => $user_id);
}

#
# update_level_using_put test
#
{
    my $name = undef; # replace NULL with a proper value
    my $new_level = undef; # replace NULL with a proper value
    my $result = $api->update_level_using_put(name => $name, new_level => $new_level);
}


1;