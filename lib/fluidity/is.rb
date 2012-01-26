require 'fluidity/grammer'

class Object #BasicObject

  # Use `is` nomenclature for assertions.
  #
  #  10.is.kind_of?(Integer)
  #
  def is(matcher=nil)
    if matcher
      matcher === self
    else
      ::Fluidity::Grammer::Is.new(self)
    end
  end

end

