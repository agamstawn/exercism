class Change
    class ImpossibleCombinationError < StandardError; end
    class NegativeTargetError < StandardError; end

    def self.generate(arr_params, total_value)
        raise NegativeTargetError if total_value < 0
        result = []
        return result if total_value == 0
        arr_coins = arr_params.select{|coin| coin <= total_value}
        n = 1
        while n <= total_value
            result = arr_coins.repeated_combination(n).find {|value| value.sum == total_value}
            return result if !result.nil?
            n += 1
        end
        raise ImpossibleCombinationError
    end
end