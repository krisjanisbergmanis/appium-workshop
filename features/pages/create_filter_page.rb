class CreateFilterPage < BasePage
  def initialize
    @title = Element.new(:xpath, '//android.widget.TextView[contains(@text, "Izveidot filtru")]')
    @titles_category = ElementGroup.new(:id, 'main_row_text')
    @button_close_alert_cancel = Element.new(:id, 'buy_cancel_text')
  end

  def visible?
    @title.visible?
    @titles_category.visible?
  end

  def open_category(name)
    @titles_category.click_by_text(name)
  end

  def deny_offer_if_visible
    if @button_close_alert_cancel.any?
       @button_close_alert_cancel.click
    end
  end
end