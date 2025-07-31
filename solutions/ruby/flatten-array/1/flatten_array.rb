module FlattenArray
  def self.flatten(input_array, tracking_array = [])

    input_array.each do |ele|
      next unless ele

      if ele.instance_of?(Array)
        flatten(ele, tracking_array)
      else
        tracking_array.push(ele)
      end
    end

    tracking_array
  end
end
