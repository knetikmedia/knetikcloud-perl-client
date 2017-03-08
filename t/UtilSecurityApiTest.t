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

use_ok('KnetikCloud::UtilSecurityApi');

my $api = KnetikCloud::UtilSecurityApi->new();
isa_ok($api, 'KnetikCloud::UtilSecurityApi');

#
# get_user_location_log test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_user_location_log(user_id => $user_id);
}

#
# get_user_token_details test
#
{
    my $result = $api->get_user_token_details();
}


1;