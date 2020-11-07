package ${packageName}.domain.repository

import ${packageName}.domain.model.User
import io.reactivex.Observable

interface UserRepository {
    fun getUsers(): Observable<List<User>>
}