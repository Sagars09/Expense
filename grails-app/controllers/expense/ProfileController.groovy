package expense

class ProfileController {

    def index() {
        List loggedUser = User.findAllById(session.newUser)
        session.signedUser = loggedUser
        [loggedUser: loggedUser]
    }

    def edit() {
        [signedUser: session.signedUser]

    }

    def update() {
        User updateUser = User.get(params.id)
        updateUser.firstName = params.firstName
        updateUser.lastName = params.lastName
        updateUser.email = params.email
        updateUser.password = params.password
        updateUser.save(flush: true)
        println "updated"
        flash.message = "Your Data has been Updated!"
        redirect(action: "index")
    }
}
