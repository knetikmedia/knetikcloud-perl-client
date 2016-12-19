=begin comment

Knetik Platform API Documentation Latest

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

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

use_ok('WWW::SwaggerClient::AuthPermissionsApi');

my $api = WWW::SwaggerClient::AuthPermissionsApi->new();
isa_ok($api, 'WWW::SwaggerClient::AuthPermissionsApi');

#
# create_permission_using_post test
#
{
    my $permission_resource = undef; # replace NULL with a proper value
    my $result = $api->create_permission_using_post(permission_resource => $permission_resource);
}

#
# delete_permission_using_delete test
#
{
    my $permission = undef; # replace NULL with a proper value
    my $force = undef; # replace NULL with a proper value
    my $result = $api->delete_permission_using_delete(permission => $permission, force => $force);
}

#
# get_permission_using_get test
#
{
    my $permission = undef; # replace NULL with a proper value
    my $result = $api->get_permission_using_get(permission => $permission);
}

#
# get_permission_using_get1 test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_permission_using_get1(size => $size, page => $page, order => $order);
}

#
# update_permission_using_put test
#
{
    my $permission = undef; # replace NULL with a proper value
    my $permission_resource = undef; # replace NULL with a proper value
    my $result = $api->update_permission_using_put(permission => $permission, permission_resource => $permission_resource);
}


1;
