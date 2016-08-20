Rails.application.routes.draw do
  root "angular#angular"
  get "*path", to: "anglar#angular"
end
