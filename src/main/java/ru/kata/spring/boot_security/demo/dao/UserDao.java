package ru.kata.spring.boot_security.demo.dao;

import ru.kata.spring.boot_security.demo.entity.Role;
import ru.kata.spring.boot_security.demo.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserDao {
    List<User> getAllUsers();

    void saveUser(User user);

    User getUserById(long id);

    void updateUser(User user);

    void deleteUser(long id);

    Optional<User> getUserByEmail(String email);

    List<Role> getAllRoles();
}
