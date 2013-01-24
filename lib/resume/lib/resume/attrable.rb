module Resume
  module Attrable

    def self.included(src_module)
      src_module.extend ClassMethods
    end

    module ClassMethods

      def attr_readerable(*attrs)
        send(:attr_reader, *attrs)

        # Inject predicate instance methods.
        attrs.each do |attr|
          send(:define_method, "#{attr}?") do
            !!send(attr)
          end
        end
      end

    end

  end
end
