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

use_ok('KnetikCloud::PaymentsApi');

my $api = KnetikCloud::PaymentsApi->new();
isa_ok($api, 'KnetikCloud::PaymentsApi');

#
# create_payment_method test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $payment_method = undef; # replace NULL with a proper value
    my $result = $api->create_payment_method(user_id => $user_id, payment_method => $payment_method);
}

#
# delete_payment_method test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_payment_method(user_id => $user_id, id => $id);
}

#
# get_payment_method test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_payment_method(user_id => $user_id, id => $id);
}

#
# get_payment_methods test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $filter_name = undef; # replace NULL with a proper value
    my $filter_payment_type = undef; # replace NULL with a proper value
    my $filter_payment_method_type_id = undef; # replace NULL with a proper value
    my $filter_payment_method_type_name = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_payment_methods(user_id => $user_id, filter_name => $filter_name, filter_payment_type => $filter_payment_type, filter_payment_method_type_id => $filter_payment_method_type_id, filter_payment_method_type_name => $filter_payment_method_type_name, size => $size, page => $page, order => $order);
}

#
# payment_authorization test
#
{
    my $request = undef; # replace NULL with a proper value
    my $result = $api->payment_authorization(request => $request);
}

#
# payment_capture test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->payment_capture(id => $id);
}

#
# update_payment_method test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $payment_method = undef; # replace NULL with a proper value
    my $result = $api->update_payment_method(user_id => $user_id, id => $id, payment_method => $payment_method);
}


1;
