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

use_ok('KnetikCloud::UsersSubscriptionsApi');

my $api = KnetikCloud::UsersSubscriptionsApi->new();
isa_ok($api, 'KnetikCloud::UsersSubscriptionsApi');

#
# get_user_subscription_details test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $inventory_id = undef; # replace NULL with a proper value
    my $result = $api->get_user_subscription_details(user_id => $user_id, inventory_id => $inventory_id);
}

#
# get_users_subscription_details test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_users_subscription_details(user_id => $user_id);
}

#
# reactivate_user_subscription test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $inventory_id = undef; # replace NULL with a proper value
    my $reactivate_subscription_request = undef; # replace NULL with a proper value
    my $result = $api->reactivate_user_subscription(user_id => $user_id, inventory_id => $inventory_id, reactivate_subscription_request => $reactivate_subscription_request);
}

#
# set_subscription_bill_date test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $inventory_id = undef; # replace NULL with a proper value
    my $bill_date = undef; # replace NULL with a proper value
    my $result = $api->set_subscription_bill_date(user_id => $user_id, inventory_id => $inventory_id, bill_date => $bill_date);
}

#
# set_subscription_payment_method test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $inventory_id = undef; # replace NULL with a proper value
    my $payment_method_id = undef; # replace NULL with a proper value
    my $result = $api->set_subscription_payment_method(user_id => $user_id, inventory_id => $inventory_id, payment_method_id => $payment_method_id);
}

#
# set_subscription_status test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $inventory_id = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $result = $api->set_subscription_status(user_id => $user_id, inventory_id => $inventory_id, status => $status);
}

#
# set_user_subscription_plan test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $inventory_id = undef; # replace NULL with a proper value
    my $plan_id = undef; # replace NULL with a proper value
    my $result = $api->set_user_subscription_plan(user_id => $user_id, inventory_id => $inventory_id, plan_id => $plan_id);
}


1;
