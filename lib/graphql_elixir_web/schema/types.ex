defmodule GraphqlElixirWeb.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: GraphqlElixir.Repo

  object :house do
    field :id, :id
    field :address, :string
    field :country, :string
    field :region_code, :string
    field :members, list_of(:member), resolve: assoc(:members)
  end

  object :member do
    field :id, :id
    field :name, :string
    field :gender, :string
    field :age, :integer
  end
end
