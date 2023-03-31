class Builders::Test < SiteBuilder
  def build
    # NOTE: This filter is used on index.md
    liquid_filter :multiply_and_optionally_add do |input, multiply_by, add_by = nil|
      value = input * multiply_by
      add_by ? value + add_by : value
    end
  end
end