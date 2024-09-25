require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  test "validates a service if all parameters are present" do
    @service = Service.new(
      name: "Master of Ceremonies Tich",
      description: "The best there is in officiatig a wedding",
      city: "Harare",
      province: "Harare",
      country: "Zimbabwe"
    )
    assert @service.valid?
  end

  test "requires a name" do
    @service = Service.new(
      name: "",
      description: "I did not provide a name",
      city: "Harare",
      province: "Harare",
      country: "Zimbabwe"
    )
    assert_not @service.valid?

    @service.name = "Tinotenda the dancer"
    assert @service.valid?
  end
  
  test "requires a description" do
    @service = Service.new(
      name: "Master od cermeonies Tich",
      description: "",
      city: "Harare",
      province: "Harare",
      country: "Zimbabwe"
    )

    assert_not @service.valid?

    @service.description = "The deription has been provided"
    assert @service.valid?
  end
end
