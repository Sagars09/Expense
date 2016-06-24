package expense

class ConfirmUserFilters {

    def filters = {
        all(controller: 'profile', action: '*') {
            before = {
                if (!session.newUser) {
                    flash.message = "Your Session has been expired!. Please login again"
                    redirect(controller: "login", action: "index")
                    return false
                }
            }
        }
    }
}