Canard::Abilities.for(:admin) do
  can [:create, :update, :destroy], Request
  can [:create, :update, :destroy], Commission
  can [:create, :update, :destroy], Review
  can [:create, :update, :destroy], Artist
end
