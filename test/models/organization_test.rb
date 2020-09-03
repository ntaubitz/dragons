require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  setup do
    @organization = organizations(:redbeard)
  end

  test "an organization can have a dragon" do
    assert 0 == @organization.dragons.count

    @organization.dragons << dragons(:smaug)

    assert 1 == @organization.dragons.count
  end

  test "an organization can have multiple dragons" do
    assert 0 == @organization.dragons.count

    @organization.dragons << dragons(:smaug)
    @organization.dragons << dragons(:clover)

    assert 2 == @organization.dragons.count
  end
end
