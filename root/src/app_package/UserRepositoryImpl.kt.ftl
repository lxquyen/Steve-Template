package ${packageName}.data.repository

import ${packageName}.data.api.UserService
import ${packageName}.domain.model.User
import ${packageName}.domain.repository.UserRepository
import io.reactivex.Observable
import javax.inject.Inject

class UserRepositoryImpl @Inject constructor() : UserRepository {
    @Inject
    lateinit var userService: UserService

    override fun getUsers(): Observable<List<User>> {
        return userService.getUsers()
    }
}