defmodule GraphqlElixir.Member do
  use Ecto.Schema
  import Ecto.Changeset
  alias GraphqlElixir.Member


  schema "members" do
    field :age, :integer
    field :gender, :string
    field :name, :string

    belongs_to :house, GraphqlElixir.House

    timestamps()
  end

  @doc false
  def changeset(%Member{} = member, attrs) do
    member
    |> cast(attrs, [:name, :age, :gender])
    |> validate_required([:name, :age, :gender])
  end
end
