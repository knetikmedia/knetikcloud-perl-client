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

use_ok('KnetikCloud::CampaignsApi');

my $api = KnetikCloud::CampaignsApi->new();
isa_ok($api, 'KnetikCloud::CampaignsApi');

#
# add_challenge_to_campaign test
#
{
    my $id = undef; # replace NULL with a proper value
    my $challenge_id = undef; # replace NULL with a proper value
    my $result = $api->add_challenge_to_campaign(id => $id, challenge_id => $challenge_id);
}

#
# create_campaign test
#
{
    my $campaign_resource = undef; # replace NULL with a proper value
    my $result = $api->create_campaign(campaign_resource => $campaign_resource);
}

#
# create_campaign_template test
#
{
    my $campaign_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_campaign_template(campaign_template_resource => $campaign_template_resource);
}

#
# delete_campaign test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_campaign(id => $id);
}

#
# delete_campaign_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_campaign_template(id => $id, cascade => $cascade);
}

#
# get_campaign test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_campaign(id => $id);
}

#
# get_campaign_challenges test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_campaign_challenges(id => $id);
}

#
# get_campaign_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_campaign_template(id => $id);
}

#
# get_campaign_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_campaign_templates(size => $size, page => $page, order => $order);
}

#
# get_campaigns test
#
{
    my $filter_active = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_campaigns(filter_active => $filter_active, size => $size, page => $page, order => $order);
}

#
# remove_challenge_from_campaign test
#
{
    my $campaign_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->remove_challenge_from_campaign(campaign_id => $campaign_id, id => $id);
}

#
# update_campaign test
#
{
    my $id = undef; # replace NULL with a proper value
    my $campaign_resource = undef; # replace NULL with a proper value
    my $result = $api->update_campaign(id => $id, campaign_resource => $campaign_resource);
}

#
# update_campaign_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $campaign_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_campaign_template(id => $id, campaign_template_resource => $campaign_template_resource);
}


1;