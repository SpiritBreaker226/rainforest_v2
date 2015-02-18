require 'rails_helper'

# we use "describe <class>" to start writing tests
describe Product do
  # Arrange necessary preconditions and inputs
  let(:product) { create(:product) }

  # we then write examples (specifications) in our describe block using an it-do-end syntax
  # Example spec:
  it "should have a name" do
    # we instantiate a product object and assign it to "product"

    ## we can use "should" to expect a value
    expect(product.name).not_to be_nil

    #be_valid runs the predicate matcher be_valid which is going to call the ActiveRecord valid? method
    expect(product).to be_valid
  end

  it "should have a description" do
  	expect(product.descriptiones).not_to be_nil
  end

  it "should have a price" do
  	expect(product.price).not_to be_nil
  end

end
