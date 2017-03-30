defmodule OrbitaHealthLoginTest do
  use OrbitaHealth.AcceptanceCase, async: true

  test "on root I have orbita toolbar", %{session: session} do
    session = session |> visit("/")
    text = session |> find(Query.css(".orbita-components-toolbar")) |> Element.text || ""
    # text = session |> find(Query.css(".header-orbita")) |> Element.text || ""
    assert text != ""
  end
end
