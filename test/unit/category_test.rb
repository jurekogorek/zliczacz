require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  fixtures :categories
  
  test "category should not be empty" do
    product = Category.new
    assert product.invalid?
    assert product.errors[:title].any?
  end
  test "category title should be unique" do
    product = Category.new(:title=>categories(:one).title)
    assert product.invalid?
    assert_equal "ej jest ju taka kategoria!; blad polskich literek", product.errors[:title].join("; ")
  end
  
end
