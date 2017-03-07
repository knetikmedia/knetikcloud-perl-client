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

use_ok('WWW::SwaggerClient::GamificationLevelingApi');

my $api = WWW::SwaggerClient::GamificationLevelingApi->new();
isa_ok($api, 'WWW::SwaggerClient::GamificationLevelingApi');

#
# create_level test
#
{
    my $level = undef; # replace NULL with a proper value
    my $result = $api->create_level(level => $level);
}

#
# delete_level test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->delete_level(name => $name);
}

#
# get_level test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_level(name => $name);
}

#
# get_level_triggers test
#
{
    my $result = $api->get_level_triggers();
}

#
# get_levels test
#
{
    my $filter_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_levels(filter_name => $filter_name, size => $size, page => $page, order => $order);
}

#
# get_user_level test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_user_level(user_id => $user_id, name => $name);
}

#
# get_user_levels test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_user_levels(user_id => $user_id);
}

#
# update_level test
#
{
    my $name = undef; # replace NULL with a proper value
    my $new_level = undef; # replace NULL with a proper value
    my $result = $api->update_level(name => $name, new_level => $new_level);
}

#
# update_user_level test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $name = undef; # replace NULL with a proper value
    my $progress = undef; # replace NULL with a proper value
    my $result = $api->update_user_level(user_id => $user_id, name => $name, progress => $progress);
}


1;
