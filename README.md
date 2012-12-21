= Fluidity

{Website}[http://rubyworks.github.com/fluidity] /
{Development}[http://github.com/rubyworks/fluidity] /
{Mailing List}[http://groups.google.com/group/rubyworks-mailinglist]

{<img src="https://secure.travis-ci.org/rubyworks/fluidity.png" />}[http://travis-ci.org/rubyworks/fluidity]


== DESCRIPTION

Fluidity is a an assertions notation built on top of the Assay
assertions framework. It defines a set of methods that provide
a fluid notation for specify test assertions.

Assay defines assertions in the same way that Ruby defines exceptions.
Assay provides a complete set of these assertion classes for all
common assertion needs. See {Assay}[http://rubyworks.github.com/assay]
project for more information on this foundational library.


== USAGE

Developers want to write assertions easily and concisely. To this end Fluidity
provides a flexible grammar system which can be used by requiring any of the
prime grammar methods that extend Object. The most common is probably `should`.

  require 'fluidity/should'

  10.should.be.kind_of(Integer)

But if you are accustom to MiniTest's spec methods, you might prefer `must`.

  require 'fluidity/must'

  10.must.be.kind_of(Integer)

Also provided is `assert` for those techy aficionados.

  require 'fluidity/assert'

  10.assert.kind_of(Integer)

So what is so fluid about all this? Well, Fluidity allows the developer quite
the English like expression. For instance.

  10.should.not.be.an.instance_of?(String)

Pretty neat, though perhaps bit excessive for a real-life use. Generally
it's good enough to use the shorter and a tad bit faster:
 
  10.shouldnt.be.instance_of?(String)

Speaking of _fast_, so what about speed? Of course, running through multiple
extra method calls to make an assertion is going to be slower than making just
a single method call. So, yes, tests might run a bit slower on Fluidity than
they would with another less readable assertions system. However, method calls
are pretty dang fast and unlikely to present any significant performance 
overhead on test runs. At most, tests runs might take a few additional seconds
for _very_ _large_ test suites.


== INSTALLATION

To install with RubyGems simply open a console and type:

  $ gem install fluidity

Site installation with the tarball can be done with Ruby Setup
(gem install setup). See http://rubyworks.github.com/setup.


== COPYRIGHTS

Copyright (c) 2012 Rubyworks

This program is distributed under the terms of the *BSD-2-Clause* license.

See COPYING.rdoc file for details.
