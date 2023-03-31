class Builders::Test < SiteBuilder
  def build
    liquid_filter :multiply_and_optionally_add do |input, multiply_by, add_by = nil|
      value = input * multiply_by
      add_by ? value + add_by : value
    end
  end
end