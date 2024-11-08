defmodule Example.World.Country do
  use Ash.Resource, otp_app: :example, domain: Example.World, data_layer: AshPostgres.DataLayer

  postgres do
    table "countries"
    repo Example.Repo
  end

  code_interface do
    define :read
    define :create
  end

  actions do
    defaults [:read, :create]
    default_accept [:name]
  end

  attributes do
    uuid_v7_primary_key :id

    attribute :name, :string, allow_nil?: false
  end

  relationships do
    has_many :regions, Example.World.Region

    has_many :cities, Example.World.City do
      no_attributes? true
      filter expr(region.country_id == parent(id))
    end
  end

  identities do
    identity :name, [:name]
  end
end
