Canard::Abilities.for(:artist) do
  
  cannot [:update, :destroy], Artist
  can [:create, :update], Commission
  cannot [:destroy], Commission
  
  cannot [:update, :destroy], Request
end
