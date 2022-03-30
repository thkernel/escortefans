# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "https://escortefans.com"
#SitemapGenerator::Sitemap.create_index = true
SitemapGenerator::Sitemap.compress = false
=begin
Generating Multiple Sitemaps

Each call to create creates a new sitemap index and associated sitemaps. You can call create as many times as you want within your sitemap configuration.

You must remember to use a different filename or location for each set of sitemaps, otherwise they will overwrite each other. You can use the filename, namer and sitemaps_path options for this.

In the following example we generate three sitemaps each in its own subdirectory:

%w(google bing apple).each do |subdomain|
  SitemapGenerator::Sitemap.default_host = "https://#{subdomain}.mysite.com"
  SitemapGenerator::Sitemap.sitemaps_path = "sitemaps/#{subdomain}"
  SitemapGenerator::Sitemap.create do
    add '/home'
  end
end
=end
SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end

  #
 
  add "/login"
  add "/signup"
  
  
  
end
