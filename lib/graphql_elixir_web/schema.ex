defmodule GraphqlElixirWeb.Schema do
  use Absinthe.Schema
  import_types GraphqlElixirWeb.Schema.Types

  query do
    field :houses, list_of(:house) do
      resolve fn _params, _info -> 
        {:ok, GraphqlElixir.Repo.all(GraphqlElixir.House)}
      end
    end
  end
end
