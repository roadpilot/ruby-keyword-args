def convert_temp(temp, input_scale:, output_scale: 'celsius')
    case input_scale
        when 'fahrenheit'
            return output_scale == 'kelvin' ? 
                ((temp - 32) / 1.8) + 273.15 : #kelvin
                (temp - 32) / 1.8 #fheit
        when 'celsius'
            return output_scale == 'kelvin' ? 
                temp + 273.15 : #kelvin
                (temp * 1.8) + 32 #fheit
        when 'kelvin'
            return output_scale == 'celsius' ? 
                temp - 273.15 : #celcius
                (temp - 273.15) * 1.8 #fheit
    end
end