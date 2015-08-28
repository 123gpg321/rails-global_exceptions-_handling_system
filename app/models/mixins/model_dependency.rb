module Model
  class ModelDependency
    def method(options)
      if @foo.nil?
        raise Exceptions::Handler.new("Exception feedback message goes here", 422)
      end
    end
  end
end