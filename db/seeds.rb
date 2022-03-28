# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.


# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback


# Roles

unless Role.all.present?
    roles = Role.create(
        [
            {name: "Superuser"},
            {name: "Administrator"},
            {name: "Guest"},
            {name: "User"},
            {name: "Escort"},
            {name: "Member"},
            {name: "Agency"},

            

        ])
else
    roles = Role.all

end





# Users
unless User.all.present?
    users = User.create([
        {login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "Superuser").id},
        {login: "administrator",  email: "administrator@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "Administrator").id},
        {login: "user",  email: "user@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "User").id},
        {login: "guest",  email: "guest@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "Guest").id},
        
    
    ])
else   
    users = User.all
end



# Profile
unless Profile.all.present?
    profile = Profile.create([
        {
            first_name: "Super",  
            last_name: "User",
            
            user_id: User.find_by(login: "superuser").id
        },
        {
            first_name: "Root",  
            last_name: "Root",
           
            user_id: User.find_by(login: "administrator").id
        },
        {
            first_name: "User",  
            last_name: "User",
          
            user_id: User.find_by(login: "user").id
        },
        {
            first_name: "Guest",  
            last_name: "Guest",
           
            user_id: User.find_by(login: "guest").id
        }
    
    ])

end

unless EscortCategory.all.present?
    escort_categories = EscortCategory.create([
        {
            name: "Escort girl",
            user_id: User.find_by(login: "superuser").id
            
        },
        {
            name: "Escort boy",
            user_id: User.find_by(login: "superuser").id
        }
    
    ])

end


unless Feature.all.present?
    features = Feature.create([
        {
            name: "Utilisateurs" 
            
        },
        {
            name: "Paramètres"
        },
        {
            name: "Configurations" 
        }
    
    ])

end


unless Service.all.present?
    services = Service.create([
        {
            name: "69",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Sexe anal",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Ejaculation dans la bouche",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Ejaculation faciale",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Jeux avec gode/sextoys",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Embrasser avec la langue",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Expérience avec la copine (GFE)",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Embrasser",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Sucer avec capote",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Sucer sans capote",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Sucer sans capote et jouir",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Sexe dans différentes positions",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Ejaculation sur le corps",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Massage érotique",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Branlette",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Embrasse selon symathie",
            user_id: User.find_by(login: "superuser").id 
        },
        {
            name: "Handjob",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Bain à bulles",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Epilation intime",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "DUO",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Tantrique",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Bodymassage avec mousse",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Lécher et sucer les testicules",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Gorge profonde",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Paroles cochonnes",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Double pénétration",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Plusieurs éjaculations",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Fist-fucking",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Massage sensuel intégral",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Gang-bang",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Kamasutra",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Jeux sexuels",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Lingerie",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Masturbation",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Expérience de star du porno (PSE)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Photos privées",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Private Videos",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Massage de la prostate",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Striptease/Lapdance",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Branlette espagnole",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "BDSM",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Bondage",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Fétischisme",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Fétischisme des pieds",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Maîtresse (hard)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Maîtresse (soft)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Fessée (donneur)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Fessée (receveur)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Gode-ceinture",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Soumission/esclave (hard)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Soumission/esclave (soft)",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Ejaculation féminine",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Service douche",
            user_id: User.find_by(login: "superuser").id
        }
              
    ])     
              
end