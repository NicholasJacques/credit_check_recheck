README

Object oriented solution to [this](http://backend.turing.io/module1/projects/credit_check) coding challenge.

Run tests:
`ruby test/credit_card_test.rb`

Examples:

```ruby
credit_card = CreditCard.new('4929735477250543')
credit_card.valid? # => true

credit_card = CreditCard.new('5541801923795240')
credit_card.valid? # => false

# works with American Express
amex_card = CreditCard.new('342804633855673')
amex_card.valid? # => true
```