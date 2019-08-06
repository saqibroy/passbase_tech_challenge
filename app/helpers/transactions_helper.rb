module TransactionsHelper
	# Harcore implementation of money conversion
	def covert_money(from, to, value)
    case from
    when 'USD'
    	case to
    	when 'EUR'
    		value * 0.89
    	when 'GDP'
    		value * 0.82
    	end
    when 'EUR'
    	case to
    	when 'USD'
    		value * 1.12
    	when 'GDP'
    		value * 0.92
    	end
    when 'GDP'
    	case to
    	when 'USD'
    		value * 1.22
    	when 'EUR'
    		value * 1.09
    	end
    end
  end

end
