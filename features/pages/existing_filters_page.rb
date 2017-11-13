class ExistingFiltersPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
        @list_filters = ElementGroup.new(:id, 'row_filter_name')#row_filter_name#categories_list#swipe_container#container#drawer
        @filter_name = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Test Name")]')
    end
    
    def visible?(text)
        @title.visible?
        @list_filters.visible?
    end

    def select_existing_filter#(name)
        @filter_name.visible?
        @filter_name.click
        #@list_filters.click_by_text(name)
    end
end