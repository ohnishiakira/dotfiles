require "pp"
require "what_methods"

# shortcut for Kernel#require
# example:
#   > r :json, :haml
#   => [true, true]
def r(*gems)
  gems.map {|g| require g.to_s}
end

# Show YARV Instruction Sequence
# example:
#   > d "1 + 1"
#   == disasm: <RubyVM::InstructionSequence:<compiled>@<compiled>>==========
#   0000 trace            1                                               (   1)
#   0002 putobject        1
#   0004 putobject        1
#   0006 opt_plus         <ic:1>
#   0008 leave
#   => nil
def d(ruby_str)
  puts RubyVM::InstructionSequence.new(ruby_str).disasm
end

# Make text HTML using Haml
# example:
#   > render "%h1 Hello World!"
#   => "<h1>Hello World!</h1>\n"
def render(html, options={})
  require "haml" unless defined? Haml
  Haml::Engine.new(html, options).render
end

class String
  def codepoint
    self.ord.to_s(16)
  end
end

IRB.conf[:PROMPT][:MINE] = {
  :PROMPT_C=>"%N(%m):%03n:%i* ",
  :RETURN=>"",
  :PROMPT_I=>"%N(%m):%03n:%i> ",
  :PROMPT_N=>"%N(%m):%03n:%i> ",
  :PROMPT_S=>"%N(%m):%03n:%i%l "
}

IRB.conf[:PROMPT_MODE] = :DEFAULT
