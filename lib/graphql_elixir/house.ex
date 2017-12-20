defmodule GraphqlElixir.House do
  use Ecto.Schema
  import Ecto.Changeset
  alias GraphqlElixir.House

  schema "houses" do
    field :address, :string
    field :country, :string
    field :region_code, :string

    has_many :members, GraphqlElixir.Member

    timestamps()
  end

  @doc false
  def changeset(%House{} = house, attrs) do
    house
    |> cast(attrs, [:address, :country, :region_code])
    |> validate_required([:address, :country, :region_code])
  end
end
