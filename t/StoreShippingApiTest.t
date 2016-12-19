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

use_ok('WWW::SwaggerClient::StoreShippingApi');

my $api = WWW::SwaggerClient::StoreShippingApi->new();
isa_ok($api, 'WWW::SwaggerClient::StoreShippingApi');

#
# create_shipping_item_using_post test
#
{
    my $shipping_item = undef; # replace NULL with a proper value
    my $result = $api->create_shipping_item_using_post(shipping_item => $shipping_item);
}

#
# create_shipping_template_using_post test
#
{
    my $shipping_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_shipping_template_using_post(shipping_template_resource => $shipping_template_resource);
}

#
# delete_shipping_item_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_shipping_item_using_delete(id => $id);
}

#
# delete_shipping_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_shipping_template_using_delete(id => $id, cascade => $cascade);
}

#
# get_shipping_item_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_shipping_item_using_get(id => $id);
}

#
# get_shipping_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_shipping_template_using_get(id => $id);
}

#
# get_shipping_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_shipping_templates_using_get(size => $size, page => $page, order => $order);
}

#
# update_shipping_item_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $shipping_item = undef; # replace NULL with a proper value
    my $result = $api->update_shipping_item_using_put(id => $id, shipping_item => $shipping_item);
}

#
# update_shipping_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $shipping_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_shipping_template_using_put(id => $id, shipping_template_resource => $shipping_template_resource);
}


1;
