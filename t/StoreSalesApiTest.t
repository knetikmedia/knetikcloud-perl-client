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

use_ok('WWW::SwaggerClient::StoreSalesApi');

my $api = WWW::SwaggerClient::StoreSalesApi->new();
isa_ok($api, 'WWW::SwaggerClient::StoreSalesApi');

#
# create_catalog_sale test
#
{
    my $catalog_sale = undef; # replace NULL with a proper value
    my $result = $api->create_catalog_sale(catalog_sale => $catalog_sale);
}

#
# delete_catalog_sale test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_catalog_sale(id => $id);
}

#
# get_catalog_sale test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_catalog_sale(id => $id);
}

#
# get_catalog_sales test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_catalog_sales(size => $size, page => $page, order => $order);
}

#
# update_catalog_sale test
#
{
    my $id = undef; # replace NULL with a proper value
    my $catalog_sale = undef; # replace NULL with a proper value
    my $result = $api->update_catalog_sale(id => $id, catalog_sale => $catalog_sale);
}


1;
