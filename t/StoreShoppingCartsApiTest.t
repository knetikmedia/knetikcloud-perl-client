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

use_ok('WWW::SwaggerClient::StoreShoppingCartsApi');

my $api = WWW::SwaggerClient::StoreShoppingCartsApi->new();
isa_ok($api, 'WWW::SwaggerClient::StoreShoppingCartsApi');

#
# add_discount_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $sku_request = undef; # replace NULL with a proper value
    my $result = $api->add_discount_using_post(id => $id, sku_request => $sku_request);
}

#
# add_item_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cart_item_request = undef; # replace NULL with a proper value
    my $result = $api->add_item_using_post(id => $id, cart_item_request => $cart_item_request);
}

#
# assign_cart_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->assign_cart_using_put(id => $id, user_id => $user_id);
}

#
# check_shippable_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->check_shippable_using_get(id => $id);
}

#
# create_cart_using_post test
#
{
    my $owner = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $result = $api->create_cart_using_post(owner => $owner, currency_code => $currency_code);
}

#
# get_cart_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_cart_using_get(id => $id);
}

#
# get_countries_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_countries_using_get(id => $id);
}

#
# modify_shipping_address_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cart_shipping_address_request = undef; # replace NULL with a proper value
    my $result = $api->modify_shipping_address_using_put(id => $id, cart_shipping_address_request => $cart_shipping_address_request);
}

#
# remove_discount_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $code = undef; # replace NULL with a proper value
    my $result = $api->remove_discount_using_delete(id => $id, code => $code);
}

#
# search_carts_using_get test
#
{
    my $filter_owner_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->search_carts_using_get(filter_owner_id => $filter_owner_id, size => $size, page => $page, order => $order);
}

#
# set_cart_currency_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $result = $api->set_cart_currency_using_put(id => $id, currency_code => $currency_code);
}

#
# update_item_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cart_item_request = undef; # replace NULL with a proper value
    my $result = $api->update_item_using_put(id => $id, cart_item_request => $cart_item_request);
}


1;
