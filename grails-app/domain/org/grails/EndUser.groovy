package org.grails

class EndUser {
    
    String userName
    String password
    String fullName
    String toString(){
        "${fullName}"
    }

    static constraints = {
        fullName()      
        userName(unique: true)
        password(password: true)
    }
    
    static hasMany = [projects : Project]
}
