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

use_ok('WWW::SwaggerClient::GamificationAchievementsApi');

my $api = WWW::SwaggerClient::GamificationAchievementsApi->new();
isa_ok($api, 'WWW::SwaggerClient::GamificationAchievementsApi');

#
# create_achievement_using_post test
#
{
    my $achievement = undef; # replace NULL with a proper value
    my $result = $api->create_achievement_using_post(achievement => $achievement);
}

#
# create_template_using_post test
#
{
    my $template = undef; # replace NULL with a proper value
    my $result = $api->create_template_using_post(template => $template);
}

#
# delete_achievement_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_achievement_template_using_delete(id => $id, cascade => $cascade);
}

#
# delete_achievement_using_delete test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->delete_achievement_using_delete(name => $name);
}

#
# find_all_by_group_name_using_get test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->find_all_by_group_name_using_get(name => $name);
}

#
# get_achievement_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_achievement_template_using_get(id => $id);
}

#
# get_achievement_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_achievement_templates_using_get(size => $size, page => $page, order => $order);
}

#
# get_achievement_using_get test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_achievement_using_get(name => $name);
}

#
# get_achievements_using_get test
#
{
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_hidden = undef; # replace NULL with a proper value
    my $filter_derived = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_achievements_using_get(filter_tagset => $filter_tagset, filter_name => $filter_name, filter_hidden => $filter_hidden, filter_derived => $filter_derived, size => $size, page => $page, order => $order);
}

#
# get_all_user_progress_for_achievement_using_get test
#
{
    my $achievement_name = undef; # replace NULL with a proper value
    my $filter_achievement_derived = undef; # replace NULL with a proper value
    my $filter_achievement_tagset = undef; # replace NULL with a proper value
    my $filter_achievement_hidden = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_all_user_progress_for_achievement_using_get(achievement_name => $achievement_name, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
}

#
# get_all_user_progress_using_get test
#
{
    my $filter_achievement_derived = undef; # replace NULL with a proper value
    my $filter_achievement_tagset = undef; # replace NULL with a proper value
    my $filter_achievement_name = undef; # replace NULL with a proper value
    my $filter_achievement_hidden = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_all_user_progress_using_get(filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
}

#
# get_available_triggers_using_get test
#
{
    my $result = $api->get_available_triggers_using_get();
}

#
# get_user_progress_for_achievement_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $achievement_name = undef; # replace NULL with a proper value
    my $result = $api->get_user_progress_for_achievement_using_get(user_id => $user_id, achievement_name => $achievement_name);
}

#
# get_user_progress_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $filter_achievement_derived = undef; # replace NULL with a proper value
    my $filter_achievement_tagset = undef; # replace NULL with a proper value
    my $filter_achievement_name = undef; # replace NULL with a proper value
    my $filter_achievement_hidden = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_user_progress_using_get(user_id => $user_id, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
}

#
# update_achievement_using_put test
#
{
    my $name = undef; # replace NULL with a proper value
    my $achievement = undef; # replace NULL with a proper value
    my $result = $api->update_achievement_using_put(name => $name, achievement => $achievement);
}

#
# update_progress_using_put test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $achievement_name = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->update_progress_using_put(user_id => $user_id, achievement_name => $achievement_name, request => $request);
}

#
# update_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $template = undef; # replace NULL with a proper value
    my $result = $api->update_template_using_put(id => $id, template => $template);
}


1;
