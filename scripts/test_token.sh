curl --request GET \
     --url "https://$1.auth0.com/api/v2/users" \
     --header "authorization: Bearer $2"   \
     --header 'content-type: application/json'

