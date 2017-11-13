class Pages
  def page_intro
    @page_intro ||= IntroPage.new
    @page_intro
  end

  def page_create_filter
    @page_create_filter ||= CreateFilterPage.new
    @page_create_filter
  end

  def page_sub_category
    @page_sub_category ||= SubCategoryPage.new
    @page_sub_category
  end

  def page_paremeters
    @page_paremeters ||= ParametersPage.new
    @page_paremeters
  end
  
  def page_side_menu
    @page_side_menu ||= SideMenuPage.new
    @page_side_menu
  end

  def page_existing_filters
    @page_existing_filters ||= ExistingFiltersPage.new
    @page_existing_filters
  end

  def page_edit_filter
    @page_edit_filter ||= EditFilterPage.new
    @page_edit_filter
  end
end