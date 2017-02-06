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

use_ok('WWW::SwaggerClient::GamificationAchievementsApi');

my $api = WWW::SwaggerClient::GamificationAchievementsApi->new();
isa_ok($api, 'WWW::SwaggerClient::GamificationAchievementsApi');

#
# create_achievement test
#
{
    my $achievement = undef; # replace NULL with a proper value
    my $result = $api->create_achievement(achievement => $achievement);
}

#
# create_achievement_template test
#
{
    my $template = undef; # replace NULL with a proper value
    my $result = $api->create_achievement_template(template => $template);
}

#
# delete_achievement test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->delete_achievement(name => $name);
}

#
# delete_achievement_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_achievement_template(id => $id, cascade => $cascade);
}

#
# get_achievement test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_achievement(name => $name);
}

#
# get_achievement_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_achievement_template(id => $id);
}

#
# get_achievement_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_achievement_templates(size => $size, page => $page, order => $order);
}

#
# get_achievement_triggers test
#
{
    my $result = $api->get_achievement_triggers();
}

#
# get_achievements test
#
{
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_hidden = undef; # replace NULL with a proper value
    my $filter_derived = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_achievements(filter_tagset => $filter_tagset, filter_name => $filter_name, filter_hidden => $filter_hidden, filter_derived => $filter_derived, size => $size, page => $page, order => $order);
}

#
# get_derived_achievements test
#
{
    my $name = undef; # replace NULL with a proper value
    my $result = $api->get_derived_achievements(name => $name);
}

#
# get_user_achievement_progress test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $achievement_name = undef; # replace NULL with a proper value
    my $result = $api->get_user_achievement_progress(user_id => $user_id, achievement_name => $achievement_name);
}

#
# get_user_achievements_progress test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $filter_achievement_derived = undef; # replace NULL with a proper value
    my $filter_achievement_tagset = undef; # replace NULL with a proper value
    my $filter_achievement_name = undef; # replace NULL with a proper value
    my $filter_achievement_hidden = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_user_achievements_progress(user_id => $user_id, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
}

#
# get_users_achievement_progress test
#
{
    my $achievement_name = undef; # replace NULL with a proper value
    my $filter_achievement_derived = undef; # replace NULL with a proper value
    my $filter_achievement_tagset = undef; # replace NULL with a proper value
    my $filter_achievement_hidden = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_users_achievement_progress(achievement_name => $achievement_name, filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
}

#
# get_users_achievements_progress test
#
{
    my $filter_achievement_derived = undef; # replace NULL with a proper value
    my $filter_achievement_tagset = undef; # replace NULL with a proper value
    my $filter_achievement_name = undef; # replace NULL with a proper value
    my $filter_achievement_hidden = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_users_achievements_progress(filter_achievement_derived => $filter_achievement_derived, filter_achievement_tagset => $filter_achievement_tagset, filter_achievement_name => $filter_achievement_name, filter_achievement_hidden => $filter_achievement_hidden, size => $size, page => $page);
}

#
# update_achievement test
#
{
    my $name = undef; # replace NULL with a proper value
    my $achievement = undef; # replace NULL with a proper value
    my $result = $api->update_achievement(name => $name, achievement => $achievement);
}

#
# update_achievement_progress test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $achievement_name = undef; # replace NULL with a proper value
    my $request = undef; # replace NULL with a proper value
    my $result = $api->update_achievement_progress(user_id => $user_id, achievement_name => $achievement_name, request => $request);
}

#
# update_achievement_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $template = undef; # replace NULL with a proper value
    my $result = $api->update_achievement_template(id => $id, template => $template);
}


1;
