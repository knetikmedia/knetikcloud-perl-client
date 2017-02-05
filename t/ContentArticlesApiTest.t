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

use_ok('WWW::SwaggerClient::ContentArticlesApi');

my $api = WWW::SwaggerClient::ContentArticlesApi->new();
isa_ok($api, 'WWW::SwaggerClient::ContentArticlesApi');

#
# create_article_template_using_post test
#
{
    my $article_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_article_template_using_post(article_template_resource => $article_template_resource);
}

#
# create_article_using_post test
#
{
    my $article_resource = undef; # replace NULL with a proper value
    my $result = $api->create_article_using_post(article_resource => $article_resource);
}

#
# delete_article_template_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_article_template_using_delete(id => $id, cascade => $cascade);
}

#
# delete_article_using_delete test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_article_using_delete(id => $id);
}

#
# get_article_template_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_article_template_using_get(id => $id);
}

#
# get_article_templates_using_get test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_article_templates_using_get(size => $size, page => $page, order => $order);
}

#
# get_article_using_get test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_article_using_get(id => $id);
}

#
# get_articles_using_get test
#
{
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_title = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_articles_using_get(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_title => $filter_title, size => $size, page => $page, order => $order);
}

#
# update_article_template_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $article_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_article_template_using_put(id => $id, article_template_resource => $article_template_resource);
}

#
# update_article_using_put test
#
{
    my $id = undef; # replace NULL with a proper value
    my $article_resource = undef; # replace NULL with a proper value
    my $result = $api->update_article_using_put(id => $id, article_resource => $article_resource);
}


1;
