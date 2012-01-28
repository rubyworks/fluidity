require 'fluidity/grammer'

class Object

  # Use `assert` nomenclature for assertions.
  #
  #  10.assert.kind_of?(Integer)
  #
  def assert(matcher=nil, *args, &blk)
    if matcher
      if matcher.respond_to?(:=~) # good enough ?
        matcher =~ self
      else
        super(matcher, *args, &blk)
      end
    else
      ::Fluidity::Grammer::Assert.new(self)
    end
  end

end


module Kernel
  public :assert
  public :refute
end
