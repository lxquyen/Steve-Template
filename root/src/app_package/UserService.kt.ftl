package ${packageName}.data.api

import ${packageName}.domain.model.User
import io.reactivex.Observable
import retrofit2.http.GET

interface UserService {
    @GET("/users")
    fun getUsers(): Observable<List<User>>
}