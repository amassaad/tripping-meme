SCHEDULER.every "15s", first_in: 0 do |job|
  data = [
    { "x" => 1, "y" => 4.61 },
    { "x" => 2, "y" => 3.46 },
    { "x" => 3, "y" => 3.34 },
    { "x" => 4, "y" => 3.59 },
    { "x" => 5, "y" => 4.45 },
    { "x" => 6, "y" => 5.23 },
    { "x" => 7, "y" => 3.86 },
    { "x" => 8, "y" => 4.27 },
    { "x" => 9, "y" => 4.85 },
    { "x" => 10, "y" => 3.88 },
    { "x" => 11, "y" => 3.26 },
    { "x" => 12, "y" => 4.16 },
    { "x" => 13, "y" => 3.55 },
    { "x" => 14, "y" => 3.72 },
    { "x" => 15, "y" => 3.63 },
    { "x" => 16, "y" => 6.02 },
    { "x" => 17, "y" => 3.88 },
    { "x" => 18, "y" => 4.49 }, 
    { "x" => 19, "y" => 6.26 },
    { "x" => 20, "y" => 6.41 },
    { "x" => 21, "y" => 6.01 },
    { "x" => 22, "y" => 5.27 },
    { "x" => 23, "y" => 5.17 },
    { "x" => 24, "y" => 4.50 },
    { "x" => 25, "y" => 3.29 },
    { "x" => 26, "y" => 3.42 },
    { "x" => 27, "y" => 3.38 },
    { "x" => 28, "y" => 3.28 }
  ]
  send_event(:kwh_value, points: data)
end
