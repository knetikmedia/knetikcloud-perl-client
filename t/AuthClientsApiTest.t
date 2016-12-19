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

use_ok('WWW::SwaggerClient::AuthClientsApi');

my $api = WWW::SwaggerClient::AuthClientsApi->new();
isa_ok($api, 'WWW::SwaggerClient::AuthClientsApi');

#
# assign_client_grant_types_using_put test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $grant_list = undef; # replace NULL with a proper value
    my $result = $api->assign_client_grant_types_using_put(client_key => $client_key, grant_list => $grant_list);
}

#
# assign_client_redirect_uris_using_put test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $redirect_list = undef; # replace NULL with a proper value
    my $result = $api->assign_client_redirect_uris_using_put(client_key => $client_key, redirect_list => $redirect_list);
}

#
# create_client_using_post test
#
{
    my $client_resource = undef; # replace NULL with a proper value
    my $result = $api->create_client_using_post(client_resource => $client_resource);
}

#
# delete_client_using_delete test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $result = $api->delete_client_using_delete(client_key => $client_key);
}

#
# get_client_using_get test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $result = $api->get_client_using_get(client_key => $client_key);
}

#
# get_clients_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_clients_using_get(size => $size, page => $page, order => $order);
}

#
# list_available_grant_types_using_get test
#
{
    my $result = $api->list_available_grant_types_using_get();
}

#
# update_client_using_put test
#
{
    my $client_key = undef; # replace NULL with a proper value
    my $client_resource = undef; # replace NULL with a proper value
    my $result = $api->update_client_using_put(client_key => $client_key, client_resource => $client_resource);
}


1;
