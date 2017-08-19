require_relative 'test_helper'

class CreditCheckTest < Minitest::Test

  def test_it_initialize_with_a_number
    credit_card = CreditCard.new('4929735477250543')
    assert_equal '4929735477250543', credit_card.number
  end

  def test_it_can_check_validity
    valid_card = CreditCard.new('4929735477250543')
    invalid_card = CreditCard.new('5541801923795240')

    assert valid_card.valid?
    refute invalid_card.valid?
  end

  def test_doubles_every_second_number
    credit_card = CreditCard.new('79927398713')

    assert_equal 70, credit_card.send(:sum_odd_digits)
  end

  def test_more_valid_numbers
    assert CreditCard.new('5541808923795240').valid?
    assert CreditCard.new('4024007136512380').valid?
    assert CreditCard.new('6011797668867828').valid?
  end

  def test_more_invalid_numbers
    refute CreditCard.new('5541801923795240').valid?
    refute CreditCard.new('4024007106512380').valid?
    refute CreditCard.new('6011797668868728').valid?
  end

  def test_works_with_AMEX_numbers
    assert CreditCard.new('342804633855673').valid?
    refute CreditCard.new('342801633855673').valid?
  end
end
