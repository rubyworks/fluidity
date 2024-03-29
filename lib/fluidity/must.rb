require 'fluidity/grammer'

# TODO: What about BasicObject ?

class Object #BasicObject

  # Use `must` nomenclature for assertions.
  #
  #  10.must.be.kind_of(Integer)
  #
  def must(matcher=nil)
    if matcher
      matcher =~ self
    else
      ::Fluidity::Grammer::Must.new(self)
    end
  end

  # Also, `must_not` nomenclature for assertions.
  #
  #  10.must_not.be.kind_of?(Integer)
  #
  def must_not(matcher=nil)
    if matcher
      matcher !~ self
    else
      ::Fluidity::Grammer::Must.new(self, true)
    end
  end

  # Contraction do must not.
  #
  #  10.mustnt.be.kind_of?(Integer)
  #
  alias_method :mustnt, :must_not

end

