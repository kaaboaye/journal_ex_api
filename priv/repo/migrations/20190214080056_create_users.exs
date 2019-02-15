defmodule JournalExApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string, null: false
      add :encrypted_password, :string, null: false

      timestamps(type: :timestamptz)
    end

    create unique_index(:users, [:username])
  end
end
