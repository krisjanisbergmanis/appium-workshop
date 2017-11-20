class SettingsPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]')
    end

    def visible?
        @title.visible?
    end
end