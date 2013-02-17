class NewsPage < SitePrism::Page
    set_url '/news'

    element :top_stories, 'div.top-stories-section'
end
