package expense

class User {
    String firstName
    String lastName
    String email
    String password

    static constraints = {
        firstName(matches: "[a-z,A-Z, ]+")
        lastName(matches: "[a-z,A-Z, ]+")
        email(email: true, unique: true)
        password(blank: false)
    }
}
