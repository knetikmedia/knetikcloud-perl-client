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

use_ok('WWW::SwaggerClient::UsersRelationshipsApi');

my $api = WWW::SwaggerClient::UsersRelationshipsApi->new();
isa_ok($api, 'WWW::SwaggerClient::UsersRelationshipsApi');

#
# add_relationship_using_post test
#
{
    my $relationship = undef; # replace NULL with a proper value
    my $result = $api->add_relationship_using_post(relationship => $relationship);
}

#
# delete_relationship_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_relationship_using_delete(id => $id);
}

#
# get_relationship_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_relationship_using_get(id => $id);
}

#
# get_relationships_using_get test
#
{
    my $result = $api->get_relationships_using_get();
}

#
# update_relationship_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $relationship = undef; # replace NULL with a proper value
    my $result = $api->update_relationship_using_put(id => $id, relationship => $relationship);
}


1;
