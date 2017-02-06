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

use_ok('WWW::SwaggerClient::GamificationLeaderboardsApi');

my $api = WWW::SwaggerClient::GamificationLeaderboardsApi->new();
isa_ok($api, 'WWW::SwaggerClient::GamificationLeaderboardsApi');

#
# get_leaderboard test
#
{
    my $context_type = undef; # replace NULL with a proper value
    my $context_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_leaderboard(context_type => $context_type, context_id => $context_id, size => $size, page => $page);
}

#
# get_leaderboard_rank test
#
{
    my $context_type = undef; # replace NULL with a proper value
    my $context_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_leaderboard_rank(context_type => $context_type, context_id => $context_id, id => $id);
}

#
# get_leaderboard_strategies test
#
{
    my $result = $api->get_leaderboard_strategies();
}


1;
