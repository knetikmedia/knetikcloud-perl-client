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

use_ok('WWW::SwaggerClient::UsersApi');

my $api = WWW::SwaggerClient::UsersApi->new();
isa_ok($api, 'WWW::SwaggerClient::UsersApi');

#
# add_tag_using_post1 test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->add_tag_using_post1(user_id => $user_id, tag => $tag);
}

#
# create_user_template_using_post test
#
{
    my $user_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_user_template_using_post(user_template_resource => $user_template_resource);
}

#
# delete_user_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_user_template_using_delete(id => $id, cascade => $cascade);
}

#
# do_password_reset_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $new_password_request = undef; # replace NULL with a proper value
    my $result = $api->do_password_reset_using_put(id => $id, new_password_request => $new_password_request);
}

#
# get_tags_using_get3 test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_tags_using_get3(user_id => $user_id);
}

#
# get_user_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_user_template_using_get(id => $id);
}

#
# get_user_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_user_templates_using_get(size => $size, page => $page, order => $order);
}

#
# get_user_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_user_using_get(id => $id);
}

#
# get_users_using_get test
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
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_users_using_get(filter_displayname => $filter_displayname, filter_email => $filter_email, filter_firstname => $filter_firstname, filter_fullname => $filter_fullname, filter_lastname => $filter_lastname, filter_username => $filter_username, filter_tag => $filter_tag, filter_group => $filter_group, size => $size, page => $page, order => $order);
}

#
# initiate_password_reset_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->initiate_password_reset_using_post(id => $id);
}

#
# register_user_using_post test
#
{
    my $user_resource = undef; # replace NULL with a proper value
    my $result = $api->register_user_using_post(user_resource => $user_resource);
}

#
# remove_tag_using_delete1 test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $tag = undef; # replace NULL with a proper value
    my $result = $api->remove_tag_using_delete1(user_id => $user_id, tag => $tag);
}

#
# set_password_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $password = undef; # replace NULL with a proper value
    my $result = $api->set_password_using_put(id => $id, password => $password);
}

#
# update_user_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_user_template_using_put(id => $id, user_template_resource => $user_template_resource);
}

#
# update_user_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_resource = undef; # replace NULL with a proper value
    my $result = $api->update_user_using_put(id => $id, user_resource => $user_resource);
}


1;
