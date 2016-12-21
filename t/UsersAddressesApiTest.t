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

use_ok('WWW::SwaggerClient::UsersAddressesApi');

my $api = WWW::SwaggerClient::UsersAddressesApi->new();
isa_ok($api, 'WWW::SwaggerClient::UsersAddressesApi');

#
# create_address_using_post test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $saved_address_resource = undef; # replace NULL with a proper value
    my $result = $api->create_address_using_post(user_id => $user_id, saved_address_resource => $saved_address_resource);
}

#
# delete_address_using_delete test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_address_using_delete(user_id => $user_id, id => $id);
}

#
# get_address_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_address_using_get(user_id => $user_id, id => $id);
}

#
# get_addresses_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_addresses_using_get(user_id => $user_id, size => $size, page => $page, order => $order);
}

#
# update_address_using_put test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $saved_address_resource = undef; # replace NULL with a proper value
    my $result = $api->update_address_using_put(user_id => $user_id, id => $id, saved_address_resource => $saved_address_resource);
}


1;