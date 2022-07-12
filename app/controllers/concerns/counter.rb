module Counter
  private
    def set_counter
      @counter = session[:counter]
    end

    def inc_counter
      session[:counter] = 0 if session[:counter].nil?
      session[:counter] += 1
    end

    def reset_counter
      session[:counter] = 0
    end
end
