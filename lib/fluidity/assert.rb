require 'fluidity/grammer'

class Object

  # Use `assert` nomenclature for assertions.
  #
  #  10.assert.kind_of?(Integer)
  #
  def assert(matcher=nil, *args)
    if matcher
      return super(matcher, *args) unless matcher.respond_to?(:===) # not good enough!!!
      matcher =~ self
    else
      ::Fluidity::Grammer::Assert.new(self)
    end
  end

end


module Kernel
  public :assert
  public :refute
end
