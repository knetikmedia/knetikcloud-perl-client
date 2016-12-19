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

use_ok('WWW::SwaggerClient::StoreBundlesApi');

my $api = WWW::SwaggerClient::StoreBundlesApi->new();
isa_ok($api, 'WWW::SwaggerClient::StoreBundlesApi');

#
# create_bundle_item_using_post test
#
{
    my $bundle_item = undef; # replace NULL with a proper value
    my $result = $api->create_bundle_item_using_post(bundle_item => $bundle_item);
}

#
# create_bundle_template_using_post test
#
{
    my $bundle_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_bundle_template_using_post(bundle_template_resource => $bundle_template_resource);
}

#
# delete_bundle_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_bundle_template_using_delete(id => $id, cascade => $cascade);
}

#
# delete_store_item_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_store_item_using_delete(id => $id);
}

#
# get_bundle_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_bundle_template_using_get(id => $id);
}

#
# get_bundle_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_bundle_templates_using_get(size => $size, page => $page, order => $order);
}

#
# get_store_item_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_store_item_using_get(id => $id);
}

#
# update_bundle_item_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $bundle_item = undef; # replace NULL with a proper value
    my $result = $api->update_bundle_item_using_put(id => $id, bundle_item => $bundle_item);
}

#
# update_bundle_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $bundle_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_bundle_template_using_put(id => $id, bundle_template_resource => $bundle_template_resource);
}


1;
