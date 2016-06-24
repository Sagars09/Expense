package expense

class ProfileController {

    /*def beforeInterceptor = {
        if (!session.newUser) {
            flash.message = "Your Session has been expired!. Please login again"
            redirect(controller: "login", action: "index")
            return false
        }
    }*/

    def index() {
        List loggedUser = User.findAllById(session.newUser)
        session.newUser = loggedUser

        [loggedUser: loggedUser]
    }

    def edit() {
        [signedUser: session.newUser]
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
