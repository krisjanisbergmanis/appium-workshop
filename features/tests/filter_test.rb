class FilterTest < BasePage
    def initialize (pages)
        @pages = pages
    end
    
    def close_intro
        @pages.page_create_filter.deny_offer_if_visible
        @pages.page_intro.close_intro_if_visible
        @pages.page_create_filter.visible?
    end

    def open_filter_params
        @pages.page_create_filter.open_category("Transports")
        sub_cats = ["Vieglie auto", "BMW", "BMW X5", "Visi"]
        sub_cats.each do |sub_cat|
            @pages.page_sub_category.open_sub_category(sub_cat)
        end
        @pages.page_parameters.visible?
    end

    def set_filter_params
        @pages.page_parameters.set_name("Test Name")
        @pages.page_parameters.set_parameter("GADS", "1999", "2002")
        
    end

    def submit_filter
        set_filter_params
        @pages.page_parameters.save_filter
    end

    def submit_empty_filter
        @pages.page_parameters.save_filter
        @pages.page_parameters.visible?
    end

  end