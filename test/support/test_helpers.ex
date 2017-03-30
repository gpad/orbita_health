defmodule OrbitaHealth.TestHelpers do

  use Wallaby.DSL

  def get_text(session, selector) do
    session |> find(selector) |> text
  end

  def has_button?(session, selector) do
    # IO.inspect Query.button(session, selector)
    # IO.inspect Query.button(session, selector)
    # session |> Query.button(selector) |> text
    # IO.inspect find(session, Query.button(selector))
    has?(session, Query.button(selector))
  end

  def show?(session, selector) do
    # find(session, selector) != nil
    session |> find(Query.css(selector)) |> text
  end

end
