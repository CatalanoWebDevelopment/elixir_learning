defmodule Discuss.Repo.Migrations.AddTimestampsToTopic do
  use Ecto.Migration

  def up do
    alter table(:topics) do
      timestamps null: true
    end

    execute """
    UPDATE topics
    SET updated_at=NOW(), inserted_at=NOW()
    """

    alter table(:topics) do
      modify :inserted_at, :utc_datetime, null: false
      modify :updated_at, :utc_datetime, null: false
    end
  end

  def down do
    alter table(:topics) do
      remove :inserted_at
      remove :updated_at
    end
  end
end
