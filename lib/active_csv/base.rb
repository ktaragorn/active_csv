module ActiveCSV
  class Base
    class <<self
      #Functions dealing with loading Initialization
      def loaded?
        true      
      end

      def csv csv_file
        
      end

      #symbol for column used as id, needed?
      def id_col
        :id
      end

      #Finders
      def find(id)
        rows = where(id_col => id)
        if rows.count >1 
          raise "ID column not unique"
        elsif rows.empty?
          raise "ID not found"
        else
          rows.first
        end        
      end

      def where(conditions)
        []
      end
    end

    private
      #private methods
  end
end