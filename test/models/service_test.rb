require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  test "validates a service if all parameters are present" do
    @service = Service.new(
      name: "Master of Ceremonies Tich",
      description: "The best there is in officiatig a wedding",
      city: "Harare",
      address_1: "3527 mandaza avenue, Belgravia",
      state: "Harare",
      country: "Zimbabwe"
    )
    assert @service.valid?
  end

  test "requires a name" do
    @service = Service.new(
      name: "",
      description: "I did not provide a name",
      city: "Harare",
      address_1: "7408 East Old Highfield",
      state: "Harare",
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
      address_1: "90 Chitepo Street",
      state: "Harare",
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
      address_1: "89 Borrowdale Park Office, Borrowdale",
      state: "Harare",
      country: "Zimbabwe"
    )

    assert_not @service.valid?

    @service.city = "Harare"
    assert @service.valid?
  end

  test "requires a state to be present" do
    @service = Service.new(
      name: "Mr Brown the Dj",
      description: "The best DJ in amapiano",
      city: "Harare",
      address_1: "99 Jason Moyo Avenue",
      state: "",
      country: "Zimbabwe"
    )

    assert_not @service.valid?

    @service.state = "Harare"
    assert @service.valid?
  end

  test "requires address 1 if not entered" do
    @service = Service.new(
      name: "Mr Brown the Dj",
      description: "The best DJ in amapiano",
      city: "Harare",
      address_1: "",
      state: "Harare",
      country: "Zimbabwe"
    )

    assert_not @service.valid?

    @service.address_1 = "3427 Phase 2B Granary Harare"
    assert @service.valid?
  end

  test "requires a country to be present" do
    @service = Service.new(
      name: "Mr Brown the Dj",
      description: "The best DJ in amapiano",
      city: "Harare",
      address_1: "10 Rochester Crescent",
      state: "Harare",
      country: ""
    )

    assert_not @service.valid?

    @service.country = "Zimbabwe"
    assert @service.valid?
  end

  test "latitude and longitude are created after saving the address" do
    @service = Service.create(
      name: "First Mutual Building",
      description: "CBD luxurious venue",
      city: "Harare",
      address_1: "99 Jason Moyo Ave",
      state: "Harare",
      country: "Zimbabwe"
    )

    assert @service.persisted?

    assert_not_nil @service.latitude
    assert_not_nil @service.longitude

    assert_equal @service.latitude, -17.8308253
    assert_equal @service.longitude, 31.0540776408319
  end
end
