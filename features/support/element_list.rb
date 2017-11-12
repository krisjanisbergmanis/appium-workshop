class ElementList

    def click_by_text(text)
      $driver.find_element(:xpath, "//*[contains(@text, '#{text}')]").click
      #find_element(@value[:type], @value[:value])
    end
  
    def scroll_to_exact(text)
      $driver.scroll_to_exact(text)
    end

    def list

    end
  end