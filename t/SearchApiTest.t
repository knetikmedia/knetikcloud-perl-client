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

use_ok('WWW::SwaggerClient::SearchApi');

my $api = WWW::SwaggerClient::SearchApi->new();
isa_ok($api, 'WWW::SwaggerClient::SearchApi');

#
# external_add_using_post test
#
{
    my $type = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $object = undef; # replace NULL with a proper value
    my $result = $api->external_add_using_post(type => $type, id => $id, object => $object);
}

#
# external_delete_all_using_delete test
#
{
    my $type = undef; # replace NULL with a proper value
    my $result = $api->external_delete_all_using_delete(type => $type);
}

#
# external_delete_using_delete test
#
{
    my $type = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->external_delete_using_delete(type => $type, id => $id);
}

#
# external_register_using_post test
#
{
    my $mappings = undef; # replace NULL with a proper value
    my $result = $api->external_register_using_post(mappings => $mappings);
}

#
# search_using_post test
#
{
    my $type = undef; # replace NULL with a proper value
    my $query = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->search_using_post(type => $type, query => $query, size => $size, page => $page, order => $order);
}


1;
