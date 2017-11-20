class SettingsPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Iestatījumi")]')
        @option_vibro = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Paziņojuma vibrācija")]')
        @option_sound = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Paziņojuma skaņa")]')
    end

    def visible?
        @title.visible?
        @option_vibro.visible?
        @option_sound.visible?
    end
end