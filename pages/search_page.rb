class SearchPage < SitePrism::Page
    element :search_field, 'input[name=q]'
    element :search_button, 'button[name=btnG]'
    
    sections :results, SearchResultsSection, 'li.g'

end
