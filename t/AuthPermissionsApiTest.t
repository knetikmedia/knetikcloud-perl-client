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

use_ok('KnetikCloud::AuthPermissionsApi');

my $api = KnetikCloud::AuthPermissionsApi->new();
isa_ok($api, 'KnetikCloud::AuthPermissionsApi');

#
# create_permission test
#
{
    my $permission_resource = undef; # replace NULL with a proper value
    my $result = $api->create_permission(permission_resource => $permission_resource);
}

#
# delete_permission test
#
{
    my $permission = undef; # replace NULL with a proper value
    my $force = undef; # replace NULL with a proper value
    my $result = $api->delete_permission(permission => $permission, force => $force);
}

#
# get_permission test
#
{
    my $permission = undef; # replace NULL with a proper value
    my $result = $api->get_permission(permission => $permission);
}

#
# get_permissions test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_permissions(size => $size, page => $page, order => $order);
}

#
# update_permission test
#
{
    my $permission = undef; # replace NULL with a proper value
    my $permission_resource = undef; # replace NULL with a proper value
    my $result = $api->update_permission(permission => $permission, permission_resource => $permission_resource);
}


1;
