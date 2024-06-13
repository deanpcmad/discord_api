module Discord
  class Collection
    attr_reader :data, :total, :cursor

    def self.from_response(response, type:)
      body = response.body

      new(
        data: body.map { |attrs| type.new(attrs) },
        total: body.count,
        # cursor: body.dig("pagination", "cursor")
      )
    end

    def initialize(data:, total:, cursor: nil)
      @data = data
      @total = total
      @cursor = cursor.nil? ? nil : cursor
    end
  end
end
