class MenuTest < BasePage
    def initialize (pages)
        @pages = pages
    end

    def select_menu_category(name)
        @pages.page_side_menu.select_menu
        @pages.page_side_menu.select_menu_category(name)
    end

    def delete_filter(category)
        @pages.page_existing_filters.select_existing_filter(category)
        @pages.page_edit_filter.delete_filter
    end

    def open_settings
        select_menu_category(Iestatījumi)
        @pages.page_settings.visible?
    end
end
