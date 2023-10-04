class CountElements
  def initialize(args)
    @args = args
  end

  def perform
    result = {}
    @args.each do |el|
      if result[el].nil?
        result[el] = 1
      else
        result[el] += 1
      end
    end
    result
  end

end
