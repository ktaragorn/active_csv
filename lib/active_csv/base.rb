module ActiveCSV
  class Base
    class <<self
      def loaded?
        true      
      end
      def csv csv_file
        
      end
    end

    def find(id)
      where(id: id)[0]
    end

    def where(conditions)
      
    end

    private

  end
end