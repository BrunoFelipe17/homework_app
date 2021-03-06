defmodule HomeworkApp.User.Get do
  alias HomeworkApp.Schemas.User
  alias HomeworkApp.Repo

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, "Usuário não encontrado"}
      user -> {:ok, user}
    end
  end
end
