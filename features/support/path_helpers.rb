module PathHelpers
    
    PATH_MAP = {
        'google' => SearchPage,
        'google news' => NewsPage
    }

    def page_for(page_name)
        raise "#{page_name} not registered" unless PATH_MAP.has_key?(page_name)
        klass = PATH_MAP[page_name]        
    end

end

World(PathHelpers)
