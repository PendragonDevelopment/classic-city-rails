class Burger
  # attr_reader :options

  # def initialize(options={})
  #   @options = options
  # end

  # def apply_ketchup
  #   @ketchup = @options[:ketchup]
  # end

  # def has_ketchup_on_it?
  #   @ketchup
  # end

end

describe Burger do
  # best practices: use method names and idioms to more accurately describe the test
  describe "#apply_ketchup" do
    # set contexts to build test cases
    context "with ketchup" do
      # before actions can help you with testing set up and breakdown
      before do
        @burger = Burger.new(:ketchup => true)
        @burger.apply_ketchup
      end

      it ".has_ketchup_on_it?" do
        expect(@burger.has_ketchup_on_it?).to be_true
      end

    end

    context "without ketchup" do
      before do
        @burger = Burger.new(:ketchup => false)
        @burger.apply_ketchup
      end

    end
  end
end