defmodule GraphqlElixir.Repo.Migrations.CreateHouses do
  use Ecto.Migration

  def change do
    create table(:houses) do
      add :address, :string
      add :country, :string
      add :region_code, :string

      timestamps()
    end

  end
end
