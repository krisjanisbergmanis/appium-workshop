class ParametersPage < BasePage
    def initialize
        @title = Element.new(:xpath, '//android.widget.TextView[contains(@text,"Parametri")]')
        @button_save = Element.new(:id, 'save_filter')
        @button_cancel = Element.new(:id, 'Navigate up')
        @input_name = Element.new(:id, 'param_filter_name')
        @title_parameter_name = Element.new(:id, 'parameter_name')
        @input_left_parameter = ElementList.new(:id, 'left_param')
        @input_right_parameter = ElementList.new(:id, 'right_param')
        @frame_parameter = ElementList.new(:id, 'parameter_body_holder')
       # @transports_category = Element.new(:xpath, '//android.widget.TextView[contains(@text,"Transpors")]')
    end

    def visible?
        @title.visible?
        @button_save.visible?
        @button_cancel.visible?
        @title_parameter_name.visible?
        @input_left_parameter.visible?
        @input_right_parameter.visible?
    end

    def set_name(name)
        @input_name.send_keys( keys name)
    end

    def save_filter
        @button_save.click
    end

    def set_parameter(name, left_param, right_param)
        frames = @frame_parameter.list
        if frames.any?
            frames.each do |frame|
                frame.find_child(@title_parameter_name)

                
            end
        else
            raise "No elemments in list"
        end
        
    end

end