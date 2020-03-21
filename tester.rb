module Parent
  class Tools
    @var = 'fdfd'
    def self.config(t)
      @var = t
    end
    def self.hammer
      # hello
      @var
    end

  end
end