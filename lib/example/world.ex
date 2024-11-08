defmodule Example.World do
  use Ash.Domain

  resources do
    resource Example.World.Country
    resource Example.World.Region
    resource Example.World.City
    resource Example.World.Landmark
  end
end
