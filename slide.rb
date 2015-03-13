class Slide < ActiveRecord::Base
  # attr_reader :id, :title, :body, :listOrder
#
#   def initialize(options)
#     @id = options["id"]
#     @title = options["title"]
#     @body = options["body"]
#     @listOrder = options["listOrder"]
#   end
  
  # def self.all
 #    results = DATABASE.execute("SELECT * FROM slides")
 #
 #    results.map { |row_hash| self.new(row_hash) }
 #  end
  #
  # def self.find(lo)
  #   result = DATABASE.execute("SELECT * FROM slides WHERE listOrder = #{lo}")[0]
     #
    # self.new(result)
  # end
  #
  # def delete
  #   DATABASE.execute("DELETE FROM slides WHERE id = #{id}")
  # end
  #
  # def update(key, value)
  #   DATABASE.execute("UPDATE students SET #{key} = #{value} WHERE id = #{id}")
  #
  #   # self.send("#{key}")
  # end
  
  # Returns the object as a Hash.
  def to_hash
    {
      id: id,
      title: title,
      body: body,
      listOrder: listOrder
    }
  end
end