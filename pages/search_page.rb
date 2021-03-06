class SearchPage < SitePrism::Page
    set_url '/'

    element :search_field, 'input[name=q]'
    element :search_button, 'button[name=btnG]'
    
    sections :results, SearchResultsSection, 'li.g'
    
    def has_required_elements?
        has_search_field?
    end

end
