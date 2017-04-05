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

use_ok('KnetikCloud::UsersGroupsApi');

my $api = KnetikCloud::UsersGroupsApi->new();
isa_ok($api, 'KnetikCloud::UsersGroupsApi');

#
# add_member_to_group test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $username = undef; # replace NULL with a proper value
    my $result = $api->add_member_to_group(unique_name => $unique_name, username => $username);
}

#
# create_group test
#
{
    my $group_resource = undef; # replace NULL with a proper value
    my $result = $api->create_group(group_resource => $group_resource);
}

#
# create_group_template test
#
{
    my $group_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_group_template(group_template_resource => $group_template_resource);
}

#
# delete_group test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $result = $api->delete_group(unique_name => $unique_name);
}

#
# delete_group_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_group_template(id => $id, cascade => $cascade);
}

#
# get_group test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $result = $api->get_group(unique_name => $unique_name);
}

#
# get_group_member test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_group_member(unique_name => $unique_name, user_id => $user_id);
}

#
# get_group_members test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_group_members(unique_name => $unique_name, size => $size, page => $page, order => $order);
}

#
# get_group_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_group_template(id => $id);
}

#
# get_group_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_group_templates(size => $size, page => $page, order => $order);
}

#
# get_groups_for_user test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_groups_for_user(user_id => $user_id);
}

#
# remove_group_member test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->remove_group_member(unique_name => $unique_name, user_id => $user_id);
}

#
# update_group test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $group_resource = undef; # replace NULL with a proper value
    my $result = $api->update_group(unique_name => $unique_name, group_resource => $group_resource);
}

#
# update_group_member_status test
#
{
    my $unique_name = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $result = $api->update_group_member_status(unique_name => $unique_name, user_id => $user_id, status => $status);
}

#
# update_group_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $group_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_group_template(id => $id, group_template_resource => $group_template_resource);
}

#
# update_groups test
#
{
    my $filter_template = undef; # replace NULL with a proper value
    my $filter_member_count = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_unique_name = undef; # replace NULL with a proper value
    my $filter_parent = undef; # replace NULL with a proper value
    my $filter_status = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->update_groups(filter_template => $filter_template, filter_member_count => $filter_member_count, filter_name => $filter_name, filter_unique_name => $filter_unique_name, filter_parent => $filter_parent, filter_status => $filter_status, size => $size, page => $page, order => $order);
}


1;
