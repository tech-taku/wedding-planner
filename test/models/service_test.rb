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

  test "requires a valid city input" do
    @service = Service.new(
      name: "Mr Brown the Dj",
      description: "The best DJ in amapiano",
      city: "",
      province: "Harare",
      country: "Zimbabwe"
    )

    assert_not @service.valid?

    @service.city = "Harare"
    assert @service.valid?
  end

  test "requires a province to be present" do
    @service = Service.new(
      name: "Mr Brown the Dj",
      description: "The best DJ in amapiano",
      city: "Harare",
      province: "",
      country: "Zimbabwe"
    )

    assert_not @service.valid?

    @service.province = "Harare"
    assert @service.valid?
  end

  test "requires a coutnry to be present" do
    @service = Service.new(
      name: "Mr Brown the Dj",
      description: "The best DJ in amapiano",
      city: "Harare",
      province: "Harare",
      country: ""
    )

    assert_not @service.valid?

    @service.country = "Zimbabwe"
    assert @service.valid?
  end
end
