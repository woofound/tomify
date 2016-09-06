module Traitify
  module Decks
    class Client < Stack
      def root(args = nil)
        set_verb(:get)
        
        if args && args.first
          id = args.first
          add_path("/decks/#{id}")
        else
          add_path("/decks")
        end

        
        self
      end
    end
  end
end