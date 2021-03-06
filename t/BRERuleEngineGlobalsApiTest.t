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

use_ok('KnetikCloud::BRERuleEngineGlobalsApi');

my $api = KnetikCloud::BRERuleEngineGlobalsApi->new();
isa_ok($api, 'KnetikCloud::BRERuleEngineGlobalsApi');

#
# create_bre_global test
#
{
    my $bre_global_resource = undef; # replace NULL with a proper value
    my $result = $api->create_bre_global(bre_global_resource => $bre_global_resource);
}

#
# delete_bre_global test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_bre_global(id => $id);
}

#
# get_bre_global test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_bre_global(id => $id);
}

#
# get_bre_globals test
#
{
    my $filter_system = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_bre_globals(filter_system => $filter_system, size => $size, page => $page);
}

#
# update_bre_global test
#
{
    my $id = undef; # replace NULL with a proper value
    my $bre_global_resource = undef; # replace NULL with a proper value
    my $result = $api->update_bre_global(id => $id, bre_global_resource => $bre_global_resource);
}


1;
