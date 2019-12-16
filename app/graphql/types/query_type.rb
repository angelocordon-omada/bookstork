module Types
  class QueryType < Types::BaseObject
    description 'root query'

    field :authors, [AuthorType], null: true do
      description 'gets all the authors'
    end

    def authors
      Author.all
    end
  end
end
