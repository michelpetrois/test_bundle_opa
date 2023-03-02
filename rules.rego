package rules
default allow:= false
# Regle 1 tout le monde peu voir les voitures
allow {
input.method == "GET"
input.path[cars]
}
# regle 2 pour post une voiture il faut etre manager
allow := true {
input.method == "POST"
input.path[cars]
}
# vars et helpers
user_lu := input["user"]
user_fonction := users[user_lu].title

user_is_manager {
user_fonction == "manager"
}
user_is_manager {
user_fonction == "ceo"
}
