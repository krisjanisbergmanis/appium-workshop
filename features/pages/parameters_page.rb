class ParametersPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text,"Parametri")]')
        @parameter_header = Element.new(:id, 'parameter_header_text')
       # @transports_category = Element.new(:xpath, '//android.widget.TextView[contains(@text,"Transpors")]')
    end

    def visible?
        @title.visible?
        @parameter_header.visible?
    end

end