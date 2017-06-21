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

use_ok('KnetikCloud::UsersApi');

my $api = KnetikCloud::UsersApi->new();
isa_ok($api, 'KnetikCloud::UsersApi');

#
# add_user_tag test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->add_user_tag(user_id => $user_id, tag => $tag);
}

#
# create_user_template test
#
{
    my $user_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_user_template(user_template_resource => $user_template_resource);
}

#
# delete_user_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_user_template(id => $id, cascade => $cascade);
}

#
# get_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_user(id => $id);
}

#
# get_user_tags test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_user_tags(user_id => $user_id);
}

#
# get_user_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_user_template(id => $id);
}

#
# get_user_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_user_templates(size => $size, page => $page, order => $order);
}

#
# get_users test
#
{
    my $filter_displayname = undef; # replace NULL with a proper value
    my $filter_email = undef; # replace NULL with a proper value
    my $filter_firstname = undef; # replace NULL with a proper value
    my $filter_fullname = undef; # replace NULL with a proper value
    my $filter_lastname = undef; # replace NULL with a proper value
    my $filter_username = undef; # replace NULL with a proper value
    my $filter_tag = undef; # replace NULL with a proper value
    my $filter_group = undef; # replace NULL with a proper value
    my $filter_role = undef; # replace NULL with a proper value
    my $filter_search = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_users(filter_displayname => $filter_displayname, filter_email => $filter_email, filter_firstname => $filter_firstname, filter_fullname => $filter_fullname, filter_lastname => $filter_lastname, filter_username => $filter_username, filter_tag => $filter_tag, filter_group => $filter_group, filter_role => $filter_role, filter_search => $filter_search, size => $size, page => $page, order => $order);
}

#
# password_reset test
#
{
    my $id = undef; # replace NULL with a proper value
    my $new_password_request = undef; # replace NULL with a proper value
    my $result = $api->password_reset(id => $id, new_password_request => $new_password_request);
}

#
# register_user test
#
{
    my $user_resource = undef; # replace NULL with a proper value
    my $result = $api->register_user(user_resource => $user_resource);
}

#
# remove_user_tag test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->remove_user_tag(user_id => $user_id, tag => $tag);
}

#
# set_password test
#
{
    my $id = undef; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $result = $api->set_password(id => $id, password => $password);
}

#
# start_password_reset test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->start_password_reset(id => $id);
}

#
# submit_password_reset test
#
{
    my $password_reset = undef; # replace NULL with a proper value
    my $result = $api->submit_password_reset(password_reset => $password_reset);
}

#
# update_user test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_resource = undef; # replace NULL with a proper value
    my $result = $api->update_user(id => $id, user_resource => $user_resource);
}

#
# update_user_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_user_template(id => $id, user_template_resource => $user_template_resource);
}


1;
