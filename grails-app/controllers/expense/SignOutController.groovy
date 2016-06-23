package expense

class SignOutController {

    def index() {
     session.invalidate()
     flash.message = "You have been successfully logged out!"
     redirect(controller: "login", action: "index")
    }
}
