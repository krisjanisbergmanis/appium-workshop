class BasePage
  def alert_accept
    $driver.alert_accept
  end

  def alert_deny
    $driver.alert_deny
  end
  
  def hide_keyboard
    $driver.hide_keyboard
  end

  def click_back
    $driver.back
  end
end