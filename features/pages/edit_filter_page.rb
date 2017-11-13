class EditFilterPage < BasePage
    def initialize
      @button_delete = Element.new(:id, 'delete_filter')
      @button_save = Element.new(:id, 'save_filter')
      @button_back = Element.new(:id, 'Navigate up')
    end
  
    def visible?
      #@title.visible?
      @button_apply.visible?
      @button_back.visible?
      @button_delete.visible?
    end

    def delete_filter
        @button_delete.click
        alert_accept
    end
  end