class SideMenuPage < BasePage
    def initialize
        @button_menu = Element.new(:id, 'Menu opened')
        #@meklesanas_filtri = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Meklēšanas filtri")]')
        @menu_drawer = ElementGroup.new(:id, 'fragment_drawer')
        @menu_item = ElementGroup.new(:id, 'item_name')
    end

    def visible?
        @button_menu.visible?
        @fragment_drawer.visible?
    end

    def select_menu 
        @button_menu.click
    end

    def select_menu_category(name)
        @menu_item.click_by_text(name)
    end
end
