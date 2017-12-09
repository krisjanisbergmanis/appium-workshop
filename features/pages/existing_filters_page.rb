class ExistingFiltersPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
        @list_filters = ElementGroup.new(:id, 'row_filter_name')#row_filter_name#categories_list#swipe_container#container#drawer
        @filter_name_auto = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Auto)]')
        @filter_name_land = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Land)]')
        @filter_name_vakance = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Vakance)]')
    end
    
    def visible?(text)
        @title.visible?
        @list_filters.visible?
    end

    def select_existing_filter(category)
        case 'category'
        when 'Transports'
            @filter_name_auto.visible?
            @filter_name_auto.click
        when 'Nekustamie īpašumi'
            @filter_name_land.visible?
            @filter_name_land.click
        when 'Vakances'
            @filter_name_vakance.visible?
            @filter_name_vakance.click
        end
        #@list_filters.click_by_text(name)
    end
end