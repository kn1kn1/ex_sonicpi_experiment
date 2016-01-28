defmodule ExSonicPi do
  def play(host \\ '127.0.0.1', port \\ 4557) do
    IO.puts "ExSonicPi#play"
    OSC.Client.start_link
    OSC.Client.send(host, port, "/save-and-run-buffer", ["ex_client_id", "ex_buff_id", "play 60", "ex_ws_id"])
  end
end
