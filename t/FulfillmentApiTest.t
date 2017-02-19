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

use_ok('WWW::SwaggerClient::FulfillmentApi');

my $api = WWW::SwaggerClient::FulfillmentApi->new();
isa_ok($api, 'WWW::SwaggerClient::FulfillmentApi');

#
# create_fulfillment_type test
#
{
    my $type = undef; # replace NULL with a proper value
    my $result = $api->create_fulfillment_type(type => $type);
}

#
# delete_fulfillment_type test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_fulfillment_type(id => $id);
}

#
# get_fulfillment_type test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_fulfillment_type(id => $id);
}

#
# get_fulfillment_types test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_fulfillment_types(size => $size, page => $page, order => $order);
}

#
# update_fulfillment_type test
#
{
    my $id = undef; # replace NULL with a proper value
    my $fulfillment_type = undef; # replace NULL with a proper value
    my $result = $api->update_fulfillment_type(id => $id, fulfillment_type => $fulfillment_type);
}


1;
