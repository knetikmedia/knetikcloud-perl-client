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

use_ok('KnetikCloud::UsersRelationshipsApi');

my $api = KnetikCloud::UsersRelationshipsApi->new();
isa_ok($api, 'KnetikCloud::UsersRelationshipsApi');

#
# create_user_relationship test
#
{
    my $relationship = undef; # replace NULL with a proper value
    my $result = $api->create_user_relationship(relationship => $relationship);
}

#
# delete_user_relationship test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_user_relationship(id => $id);
}

#
# get_user_relationship test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_user_relationship(id => $id);
}

#
# get_user_relationships test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_user_relationships(size => $size, page => $page, order => $order);
}

#
# update_user_relationship test
#
{
    my $id = undef; # replace NULL with a proper value
    my $relationship = undef; # replace NULL with a proper value
    my $result = $api->update_user_relationship(id => $id, relationship => $relationship);
}


1;
