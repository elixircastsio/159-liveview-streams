defmodule Teacher.Recordings.Album do
  use Ecto.Schema
  import Ecto.Changeset

  schema "albums" do
    field :artist, :string
    field :summary, :string
    field :title, :string
    field :year, :integer
    field :genre, :string
    field :genre_list, {:array, :string}

    timestamps()
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:title, :artist, :summary, :year, :genre, :genre_list])
    |> validate_required([:title, :artist, :summary, :year, :genre])
  end
end
