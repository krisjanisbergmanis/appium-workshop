class Tests
    def initialize (pages)
        @pages = pages
    end

    def filters_test
      @filters_test ||= FilterTest.new @pages
      @filters_test
    end

    def menu_test
      @menu_test ||= MenuTest.new @pages
      @menu_test
    end
  end