defmodule PingPong do
  def loop({num_iterations, name}) do
    IO.puts("#{num_iterations} - #{name}")

    receive do
      {:ball, from} ->
        pass_ball(from)
        loop({num_iterations + 1, name})

      {:stop} ->
        stop()
    end
  end

  def pass_ball(from) do
    :timer.sleep(1000)
    send(from, {:ball, self()})
  end

  defp stop(), do: :ok
end
