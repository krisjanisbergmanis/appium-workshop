class SubCategoryPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text,"Transports")]')
        @sub_cat = Element.new(:id, 'category_name')
    end

    def visible?
        @title.visible?
        @sub_cat.visible?
    end

    def open_category(name)
        @sub_cat.click_by_text(name)
    end

    def scroll_to_next(name)
        @sub_cat.scroll_to_exact(name)
    end
end