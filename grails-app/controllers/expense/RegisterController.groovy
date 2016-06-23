package expense

class RegisterController {

    def index() {
        [errUser: new User()]
    }

    def save() {
        println params

        Map m = [firstName: params.firstName, lastName: params.lastName, email: params.email, password: params.password]
        User newUser = new User(m)
        newUser.save()

        if(newUser.hasErrors()) {
            render (view: "index", model:[errUser: newUser])
            return
        }
        flash.message = "Welcome! ${newUser.firstName} ${newUser.lastName}. \nThanks for registering with Us. \nYour " +
                "Email ID is: ${newUser.email}"
        redirect(controller: "login", action: "index")
    }
}
