defmodule GraphqlElixir.Repo.Migrations.CreateMembers do
  use Ecto.Migration

  def change do
    create table(:members) do
      add :name, :string
      add :age, :integer
      add :gender, :string
      add :house_id, references(:houses, on_delete: :nothing)

      timestamps()
    end

    create index(:members, [:house_id])
  end
end
