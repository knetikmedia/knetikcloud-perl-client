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

use_ok('KnetikCloud::ReportingUsersApi');

my $api = KnetikCloud::ReportingUsersApi->new();
isa_ok($api, 'KnetikCloud::ReportingUsersApi');

#
# get_user_registrations test
#
{
    my $granularity = undef; # replace NULL with a proper value
    my $start_date = undef; # replace NULL with a proper value
    my $end_date = undef; # replace NULL with a proper value
    my $result = $api->get_user_registrations(granularity => $granularity, start_date => $start_date, end_date => $end_date);
}


1;