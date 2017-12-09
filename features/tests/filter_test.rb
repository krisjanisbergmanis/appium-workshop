class FilterTest < BasePage
    def initialize (pages, filters)
        @pages = pages
        @filters = filters
    end
    
    def close_intro
        @pages.page_create_filter.deny_offer_if_visible
        @pages.page_intro.close_intro_if_visible
        @pages.page_create_filter.visible?
    end

    def open_filter_params(category)
        case category
        when 'Transports'
            @pages.page_create_filter.open_category(@filters.transports.cat)
                @filters.transports.sub_cats.each do |sub_cat|
                @pages.page_sub_category.open_sub_category(sub_cat)
                end
        when 'Nekustamie īpašumi'
            @pages.page_create_filter.open_category(@filters.ipasumi.cat)
            @filters.ipasumi.sub_cats.each do |sub_cat|
            @pages.page_sub_category.open_sub_category(sub_cat)
            end
        when 'Vakances'
            @pages.page_create_filter.open_category(@filters.vakances.cat)
            @filters.vakances.sub_cats.each do |sub_cat|
            @pages.page_sub_category.open_sub_category(sub_cat)
            end
        end
        @pages.page_parameters.visible?
    end

    def set_filter_params(category)
        case category
        when 'Transports'
            @pages.page_parameters.set_name(@filters.transports.name)
            @filters.transports.params.each do |param|
                @pages.page_parameters.set_parameter(param)
            end 
        when 'Nekustamie īpašumi'
            @pages.page_parameters.set_name(@filters.ipasumi.name)
            @filters.ipasumi.params.each do |param|
                @pages.page_parameters.set_parameter(param)
            end
        when 'Vakances'
            @pages.page_parameters.set_name(@filters.vakances.name)
        end
    end

    def submit_filter(category)
        case category
        when 'Transports'
            set_filter_params('Transports')
        when 'Nekustamie īpašumi'
            set_filter_params('Nekustamie īpašumi')
        when 'Vakances'
            set_filter_params('Vakances')
        end
        @pages.page_parameters.save_filter
    end

    def submit_empty_filter
        @pages.page_parameters.save_filter
        @pages.page_parameters.visible?
    end
  end