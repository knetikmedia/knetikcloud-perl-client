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

use_ok('KnetikCloud::StoreApi');

my $api = KnetikCloud::StoreApi->new();
isa_ok($api, 'KnetikCloud::StoreApi');

#
# create_item_template test
#
{
    my $item_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_item_template(item_template_resource => $item_template_resource);
}

#
# create_store_item test
#
{
    my $cascade = undef; # replace NULL with a proper value
    my $store_item = undef; # replace NULL with a proper value
    my $result = $api->create_store_item(cascade => $cascade, store_item => $store_item);
}

#
# delete_item_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_item_template(id => $id, cascade => $cascade);
}

#
# delete_store_item test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_store_item(id => $id);
}

#
# get_behaviors test
#
{
    my $result = $api->get_behaviors();
}

#
# get_item_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_item_template(id => $id);
}

#
# get_item_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_item_templates(size => $size, page => $page, order => $order);
}

#
# get_store test
#
{
    my $limit = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $use_catalog = undef; # replace NULL with a proper value
    my $ignore_location = undef; # replace NULL with a proper value
    my $in_stock_only = undef; # replace NULL with a proper value
    my $result = $api->get_store(limit => $limit, page => $page, use_catalog => $use_catalog, ignore_location => $ignore_location, in_stock_only => $in_stock_only);
}

#
# get_store_item test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_store_item(id => $id);
}

#
# get_store_items test
#
{
    my $filter_name_search = undef; # replace NULL with a proper value
    my $filter_unique_key = undef; # replace NULL with a proper value
    my $filter_published = undef; # replace NULL with a proper value
    my $filter_displayable = undef; # replace NULL with a proper value
    my $filter_start = undef; # replace NULL with a proper value
    my $filter_end = undef; # replace NULL with a proper value
    my $filter_start_date = undef; # replace NULL with a proper value
    my $filter_stop_date = undef; # replace NULL with a proper value
    my $filter_sku = undef; # replace NULL with a proper value
    my $filter_price = undef; # replace NULL with a proper value
    my $filter_tag = undef; # replace NULL with a proper value
    my $filter_items_by_type = undef; # replace NULL with a proper value
    my $filter_bundled_skus = undef; # replace NULL with a proper value
    my $filter_vendor = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_store_items(filter_name_search => $filter_name_search, filter_unique_key => $filter_unique_key, filter_published => $filter_published, filter_displayable => $filter_displayable, filter_start => $filter_start, filter_end => $filter_end, filter_start_date => $filter_start_date, filter_stop_date => $filter_stop_date, filter_sku => $filter_sku, filter_price => $filter_price, filter_tag => $filter_tag, filter_items_by_type => $filter_items_by_type, filter_bundled_skus => $filter_bundled_skus, filter_vendor => $filter_vendor, size => $size, page => $page, order => $order);
}

#
# quick_buy test
#
{
    my $quick_buy_request = undef; # replace NULL with a proper value
    my $result = $api->quick_buy(quick_buy_request => $quick_buy_request);
}

#
# update_item_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $item_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_item_template(id => $id, item_template_resource => $item_template_resource);
}

#
# update_store_item test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $store_item = undef; # replace NULL with a proper value
    my $result = $api->update_store_item(id => $id, cascade => $cascade, store_item => $store_item);
}


1;
