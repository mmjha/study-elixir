defmodule WeatherHistory do
  def for_location_27([], _target_loc), do: []
  def for_location_27([[time, target_loc, temp, rain] | tail], target_loc) do
    [ [ time, target_loc, temp, rain] | for_location_27(tail, target_loc) ]
  end
  def for_location_27([_ | tail], target_loc), do: for_location_27(tail, target_loc)
end
