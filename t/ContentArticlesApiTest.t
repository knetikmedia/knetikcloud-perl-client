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

use_ok('WWW::SwaggerClient::ContentArticlesApi');

my $api = WWW::SwaggerClient::ContentArticlesApi->new();
isa_ok($api, 'WWW::SwaggerClient::ContentArticlesApi');

#
# create_article test
#
{
    my $article_resource = undef; # replace NULL with a proper value
    my $result = $api->create_article(article_resource => $article_resource);
}

#
# create_article_template test
#
{
    my $article_template_resource = undef; # replace NULL with a proper value
    my $result = $api->create_article_template(article_template_resource => $article_template_resource);
}

#
# delete_article test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_article(id => $id);
}

#
# delete_article_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $cascade = undef; # replace NULL with a proper value
    my $result = $api->delete_article_template(id => $id, cascade => $cascade);
}

#
# get_article test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_article(id => $id);
}

#
# get_article_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_article_template(id => $id);
}

#
# get_article_templates test
#
{
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_article_templates(size => $size, page => $page, order => $order);
}

#
# get_articles test
#
{
    my $filter_category = undef; # replace NULL with a proper value
    my $filter_tagset = undef; # replace NULL with a proper value
    my $filter_title = undef; # replace NULL with a proper value
    my $size = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $result = $api->get_articles(filter_category => $filter_category, filter_tagset => $filter_tagset, filter_title => $filter_title, size => $size, page => $page, order => $order);
}

#
# update_article test
#
{
    my $id = undef; # replace NULL with a proper value
    my $article_resource = undef; # replace NULL with a proper value
    my $result = $api->update_article(id => $id, article_resource => $article_resource);
}

#
# update_article_template test
#
{
    my $id = undef; # replace NULL with a proper value
    my $article_template_resource = undef; # replace NULL with a proper value
    my $result = $api->update_article_template(id => $id, article_template_resource => $article_template_resource);
}


1;
