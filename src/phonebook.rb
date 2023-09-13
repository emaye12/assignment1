class PhoneBook
    def initialize
      @listed = {};
      @unlisted = {};
      @codes = {};
    end

    def add(name, number, is_listed)
        if(@listed.has_key?(name) || @unlisted.has_key?(name))
          return false;
        elseif(number[0] == nil || number[1] == nil || number[2] == nil || number[4] == nil || number[5] == nil || number[6] == nil || number[8] == nil || number[9] == nil || number[10] == nil || number[11] == nil || nilnumber[3] != "-" || number[7] != "-" || number[12] != nil)
          return false;
         elseif(@listed.has_value?(number) && is_listed == true)
          return false;
        else
         if(is_listed)
          @listed[name] = number;
         else
          @unlisted[name] = number;
         end
         carray = [number[0], number[1], number[2]];
         code = carray.join();
         @codes[name] = code;
        end

    end

    def lookup(name)
       if(@listed.has_key?(name))
         return @listed[name];
       else
         return nil;
       end
    end

    def lookupByNum(number)
      if(@listed.has_valuse?(number))
        return @listed.key(number);
      else
        return nil;
      end
    end

    def namesByAc(areacode)
      codes = Array.new();
      codes = @codes.key(areacode);
      return codes;
    end
end
