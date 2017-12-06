require 'date'
module Filters
  def Filters.transports
    @transports ||= Filter.new(
        cat: 'Transports',
        sub_cats: ["Vieglie auto", "Audi", "Audi A1", "Visi"],
        params: [Hash['name' => 'GADS', 'left' => '1999', 'right' => '2002']]
    )
    @transports
  end

  def Filters.ipasumi
    @ipasumi ||= Filter.new(
        cat: 'Nekustamie īpašumi',
        sub_cats: ["Dzīvokļi", "Jūrmala", "Visi", "Visi"],
        params: [Hash['name' => 'Cena', 'left' => '100', 'right' => '99000']]
    )
    @ipasumi
  end

  def Filters.vakances
    @ipasumi ||= Filter.new(
        cat: 'Vakances',
        sub_cats: ["Apsargs"],
        params: [Hash['name' => 'Cena']]
    )
    @vakances
  end
end

class Filter
  include Filters
  attr_reader :name, :cat, :sub_cats, :params
  def initialize(name: '', cat: '', sub_cats: [], params: [])
    if name == ''
      @name = 'UIfilter' + DateTime.now.strftime('%Q')
    else
      @name = name
    end
    @cat = cat
    @sub_cats = sub_cats
    @params = params
  end
end