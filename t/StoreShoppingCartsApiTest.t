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

use_ok('KnetikCloud::StoreShoppingCartsApi');

my $api = KnetikCloud::StoreShoppingCartsApi->new();
isa_ok($api, 'KnetikCloud::StoreShoppingCartsApi');

#
# add_custom_discount test
#
{
    my $id = undef; # replace NULL with a proper value
    my $custom_discount = undef; # replace NULL with a proper value
    my $result = $api->add_custom_discount(id => $id, custom_discount => $custom_discount);
}

#
# add_discount_to_cart test
#
{
    my $id = undef; # replace NULL with a proper value
    my $sku_request = undef; # replace NULL with a proper value
    my $result = $api->add_discount_to_cart(id => $id, sku_request => $sku_request);
}

#
# add_item_to_cart test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cart_item_request = undef; # replace NULL with a proper value
    my $result = $api->add_item_to_cart(id => $id, cart_item_request => $cart_item_request);
}

#
# create_cart test
#
{
    my $owner = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $result = $api->create_cart(owner => $owner, currency_code => $currency_code);
}

#
# get_cart test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_cart(id => $id);
}

#
# get_carts test
#
{
    my $filter_owner_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_carts(filter_owner_id => $filter_owner_id, size => $size, page => $page, order => $order);
}

#
# get_shippable test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_shippable(id => $id);
}

#
# get_shipping_countries test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_shipping_countries(id => $id);
}

#
# remove_discount_from_cart test
#
{
    my $id = undef; # replace NULL with a proper value
    my $code = undef; # replace NULL with a proper value
    my $result = $api->remove_discount_from_cart(id => $id, code => $code);
}

#
# set_cart_currency test
#
{
    my $id = undef; # replace NULL with a proper value
    my $currency_code = undef; # replace NULL with a proper value
    my $result = $api->set_cart_currency(id => $id, currency_code => $currency_code);
}

#
# set_cart_owner test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->set_cart_owner(id => $id, user_id => $user_id);
}

#
# update_item_in_cart test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cart_item_request = undef; # replace NULL with a proper value
    my $result = $api->update_item_in_cart(id => $id, cart_item_request => $cart_item_request);
}

#
# update_shipping_address test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cart_shipping_address_request = undef; # replace NULL with a proper value
    my $result = $api->update_shipping_address(id => $id, cart_shipping_address_request => $cart_shipping_address_request);
}


1;