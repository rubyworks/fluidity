# Fluidity

[Website](http://rubyworks.github.com/fluidity) /
[Report Issue](http://github.com/rubyworks/fluidity/issues) /
[Source Code](http://github.com/rubyworks/fluidity)
( [![Build Status](https://secure.travis-ci.org/rubyworks/fluidity.png)](http://travis-ci.org/rubyworks/fluidity) )

<br/>

Fluidity is an assertions framework that provides a very elegant fluid
notation for specifying test assertions. 

Fluidity is built on top of the [Assay](http://rubyworks.github.com/assay)
assertions meta-framework, giving it a solid foundation. Assay defines
assertions in the same way that Ruby defines exceptions. Assay provides
a complete set of these assertion classes for all common assertion needs.


## Instruction

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


## Installation

To install with RubyGems simply open a console and type:

    gem install fluidity

Site installation with the tarball can be done with Ruby Setup
(gem install setup). See http://rubyworks.github.com/setup.


## Copyrights

Fluidity is copyrighted open source software.

    Copyright (c) 2012 Rubyworks

This program can be modified and distributed in accordance with
the terms of the [BSD-2-Clause](http://spdx.org/licenses/BSD-2-Clause) license.

See LICENSE.txt file for details.
