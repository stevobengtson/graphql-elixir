# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GraphqlElixir.Repo.insert!(%GraphqlElixir.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

house1 = GraphqlElixir.Repo.insert!(%GraphqlElixir.House{
  address: "1234 Test Street", country: "CA", region_code: "A1B 2C3"
})

house2 = GraphqlElixir.Repo.insert!(%GraphqlElixir.House{
  address: "8394 Example Ave", country: "US", region_code: "84958"
})

GraphqlElixir.Repo.insert!(%GraphqlElixir.Member{house_id: house1.id, name: "John Doe", age: 34, gender: "M"})
GraphqlElixir.Repo.insert!(%GraphqlElixir.Member{house_id: house1.id, name: "Jane Doe", age: 32, gender: "F"})
GraphqlElixir.Repo.insert!(%GraphqlElixir.Member{house_id: house1.id, name: "Jim Doe", age: 14, gender: "M"})
GraphqlElixir.Repo.insert!(%GraphqlElixir.Member{house_id: house1.id, name: "Jill Doe", age: 12, gender: "F"})

GraphqlElixir.Repo.insert!(%GraphqlElixir.Member{house_id: house2.id, name: "Bob Smith", age: 64, gender: "M"})
GraphqlElixir.Repo.insert!(%GraphqlElixir.Member{house_id: house2.id, name: "Betty Smith", age: 60, gender: "F"})
