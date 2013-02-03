class SearchResultsSection < SitePrism::Section
    element :title_link, 'h3.r a'
    element :description_element, 'span.st'

    def title
        title_link.text.strip
    end    

    def description
        description_element.text.strip
    end

end
