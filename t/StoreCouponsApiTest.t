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

use_ok('WWW::SwaggerClient::StoreCouponsApi');

my $api = WWW::SwaggerClient::StoreCouponsApi->new();
isa_ok($api, 'WWW::SwaggerClient::StoreCouponsApi');

#
# create_coupon_item_using_post test
#
{
    my $coupon_item = undef; # replace NULL with a proper value
    my $result = $api->create_coupon_item_using_post(coupon_item => $coupon_item);
}

#
# create_coupon_template_using_post test
#
{
    my $coupon_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_coupon_template_using_post(coupon_template_resource => $coupon_template_resource);
}

#
# delete_coupon_item_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_coupon_item_using_delete(id => $id);
}

#
# delete_coupon_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_coupon_template_using_delete(id => $id, cascade => $cascade);
}

#
# get_coupon_item_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_coupon_item_using_get(id => $id);
}

#
# get_coupon_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_coupon_template_using_get(id => $id);
}

#
# get_coupon_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_coupon_templates_using_get(size => $size, page => $page, order => $order);
}

#
# update_coupon_item_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $coupon_item = undef; # replace NULL with a proper value
    my $result = $api->update_coupon_item_using_put(id => $id, coupon_item => $coupon_item);
}

#
# update_coupon_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $coupon_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_coupon_template_using_put(id => $id, coupon_template_resource => $coupon_template_resource);
}


1;
