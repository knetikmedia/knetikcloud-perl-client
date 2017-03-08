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

use_ok('KnetikCloud::UsersFriendshipsApi');

my $api = KnetikCloud::UsersFriendshipsApi->new();
isa_ok($api, 'KnetikCloud::UsersFriendshipsApi');

#
# add_friend test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->add_friend(user_id => $user_id, id => $id);
}

#
# get_friends test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_friends(user_id => $user_id, size => $size, page => $page, order => $order);
}

#
# get_invite_token test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->get_invite_token(user_id => $user_id);
}

#
# get_invites test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_invites(user_id => $user_id, size => $size, page => $page, order => $order);
}

#
# redeem_friendship_token test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $token = undef; # replace NULL with a proper value
    my $result = $api->redeem_friendship_token(user_id => $user_id, token => $token);
}

#
# remove_or_decline_friend test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->remove_or_decline_friend(user_id => $user_id, id => $id);
}


1;
