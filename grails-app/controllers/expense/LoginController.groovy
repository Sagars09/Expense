package expense

import javax.servlet.http.Cookie

class LoginController {

    def index() { }

    def check() {
        println params
        List checkUser = User.findAllByEmailAndPassword(params.email,params.password)
        if (checkUser) {
           // String randomString = UUID.randomUUID().toString()
            //println randomString

            //Cookie myCookie = new Cookie("sagar", randomString)
            //response.addCookie(myCookie)

            session.newUser = checkUser.id
            redirect(controller: "profile", action: "index")
        }
        else {
            flash.message = "Sorry! Invalid Email or Password"
            redirect(action: "index")
        }
    }
}
