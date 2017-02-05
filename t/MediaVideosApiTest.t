=begin comment

Knetik Platform API Documentation latest 

This is the spec for the Knetik API.  Use this in conjunction with the documentation found at https://demo.sandbox.knetikcloud.com

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

use_ok('WWW::SwaggerClient::MediaVideosApi');

my $api = WWW::SwaggerClient::MediaVideosApi->new();
isa_ok($api, 'WWW::SwaggerClient::MediaVideosApi');

#
# add_comment_using_post1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $comment_resource = undef; # replace NULL with a proper value
    my $result = $api->add_comment_using_post1(video_id => $video_id, comment_resource => $comment_resource);
}

#
# add_contributor_using_post test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $contribution_resource = undef; # replace NULL with a proper value
    my $result = $api->add_contributor_using_post(video_id => $video_id, contribution_resource => $contribution_resource);
}

#
# add_disposition_using_post1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $disposition_resource = undef; # replace NULL with a proper value
    my $result = $api->add_disposition_using_post1(video_id => $video_id, disposition_resource => $disposition_resource);
}

#
# add_flag_using_post test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $reason = undef; # replace NULL with a proper value
    my $result = $api->add_flag_using_post(video_id => $video_id, reason => $reason);
}

#
# add_related_using_post test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $video_relationship_resource = undef; # replace NULL with a proper value
    my $result = $api->add_related_using_post(video_id => $video_id, video_relationship_resource => $video_relationship_resource);
}

#
# add_video_using_post test
#
{
    my $video_resource = undef; # replace NULL with a proper value
    my $result = $api->add_video_using_post(video_resource => $video_resource);
}

#
# add_whitelist_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $user_id = undef; # replace NULL with a proper value
    my $result = $api->add_whitelist_using_post(id => $id, user_id => $user_id);
}

#
# delete_comment_using_delete1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_comment_using_delete1(video_id => $video_id, id => $id);
}

#
# delete_disposition_using_delete1 test
#
{
    my $disposition_id = undef; # replace NULL with a proper value
    my $result = $api->delete_disposition_using_delete1(disposition_id => $disposition_id);
}

#
# delete_flag_using_delete test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $result = $api->delete_flag_using_delete(video_id => $video_id);
}

#
# delete_relationship_using_delete1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_relationship_using_delete1(video_id => $video_id, id => $id);
}

#
# delete_video_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_video_using_delete(id => $id);
}

#
# get_comments_using_get1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_comments_using_get1(video_id => $video_id, size => $size, page => $page);
}

#
# get_dispositions_using_get1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_dispositions_using_get1(video_id => $video_id, size => $size, page => $page);
}

#
# get_related_using_get test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_related_using_get(video_id => $video_id, size => $size, page => $page);
}

#
# get_user_videos_using_get test
#
{
    my $user_id = undef; # replace NULL with a proper value
    my $exclude_flagged = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $result = $api->get_user_videos_using_get(user_id => $user_id, exclude_flagged => $exclude_flagged, size => $size, page => $page);
}

#
# get_video_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_video_using_get(id => $id);
}

#
# remove_contributor_using_delete test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->remove_contributor_using_delete(video_id => $video_id, id => $id);
}

#
# remove_whitelist_using_delete test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $result = $api->remove_whitelist_using_delete(video_id => $video_id, id => $id);
}

#
# search_videos_using_get test
#
{
    my $exclude_flagged = undef; # replace NULL with a proper value
    my $filter_videos_by_uploader = undef; # replace NULL with a proper value
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_videos_by_name = undef; # replace NULL with a proper value
    my $filter_videos_by_contributor = undef; # replace NULL with a proper value
    my $filter_videos_by_author = undef; # replace NULL with a proper value
    my $filter_has_author = undef; # replace NULL with a proper value
    my $filter_has_uploader = undef; # replace NULL with a proper value
    my $filter_related_to = undef; # replace NULL with a proper value
    my $filter_friends = undef; # replace NULL with a proper value
    my $filter_disposition = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->search_videos_using_get(exclude_flagged => $exclude_flagged, filter_videos_by_uploader => $filter_videos_by_uploader, filter_category => $filter_category, filter_tagset => $filter_tagset, filter_videos_by_name => $filter_videos_by_name, filter_videos_by_contributor => $filter_videos_by_contributor, filter_videos_by_author => $filter_videos_by_author, filter_has_author => $filter_has_author, filter_has_uploader => $filter_has_uploader, filter_related_to => $filter_related_to, filter_friends => $filter_friends, filter_disposition => $filter_disposition, size => $size, page => $page, order => $order);
}

#
# update_comment_using_put1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $content = undef; # replace NULL with a proper value
    my $result = $api->update_comment_using_put1(video_id => $video_id, id => $id, content => $content);
}

#
# update_relationship_using_put1 test
#
{
    my $video_id = undef; # replace NULL with a proper value
    my $relationship_id = undef; # replace NULL with a proper value
    my $details = undef; # replace NULL with a proper value
    my $result = $api->update_relationship_using_put1(video_id => $video_id, relationship_id => $relationship_id, details => $details);
}

#
# update_video_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $video_resource = undef; # replace NULL with a proper value
    my $result = $api->update_video_using_put(id => $id, video_resource => $video_resource);
}

#
# view_video_using_post test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->view_video_using_post(id => $id);
}


1;
