class Ship
  attr_reader :name, :type, :booty

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
  end
end
