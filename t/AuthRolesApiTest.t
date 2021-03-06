=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://knetikcloud.com.

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

use_ok('KnetikCloud::AuthRolesApi');

my $api = KnetikCloud::AuthRolesApi->new();
isa_ok($api, 'KnetikCloud::AuthRolesApi');

#
# create_role test
#
{
    my $role_resource = undef; # replace NULL with a proper value
    my $result = $api->create_role(role_resource => $role_resource);
}

#
# delete_role test
#
{
    my $role = undef; # replace NULL with a proper value
    my $force = undef; # replace NULL with a proper value
    my $result = $api->delete_role(role => $role, force => $force);
}

#
# get_client_roles test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $result = $api->get_client_roles(client_key => $client_key);
}

#
# get_role test
#
{
    my $role = undef; # replace NULL with a proper value
    my $result = $api->get_role(role => $role);
}

#
# get_roles test
#
{
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_role = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_roles(filter_name => $filter_name, filter_role => $filter_role, size => $size, page => $page, order => $order);
}

#
# get_user_roles test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_user_roles(user_id => $user_id);
}

#
# set_client_roles test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $roles_list = undef; # replace NULL with a proper value
    my $result = $api->set_client_roles(client_key => $client_key, roles_list => $roles_list);
}

#
# set_permissions_for_role test
#
{
    my $role = undef; # replace NULL with a proper value
    my $permissions_list = undef; # replace NULL with a proper value
    my $result = $api->set_permissions_for_role(role => $role, permissions_list => $permissions_list);
}

#
# set_user_roles test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $roles_list = undef; # replace NULL with a proper value
    my $result = $api->set_user_roles(user_id => $user_id, roles_list => $roles_list);
}

#
# update_role test
#
{
    my $role = undef; # replace NULL with a proper value
    my $role_resource = undef; # replace NULL with a proper value
    my $result = $api->update_role(role => $role, role_resource => $role_resource);
}


1;
