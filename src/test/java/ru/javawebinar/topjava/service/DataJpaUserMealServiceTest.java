package ru.javawebinar.topjava.service;

import org.springframework.test.context.ActiveProfiles;
import ru.javawebinar.topjava.Profiles;

/**
 * Created by Privat on 16.10.2016.
 */
@ActiveProfiles(Profiles.DATAJPA)
public class DataJpaUserMealServiceTest extends AbstractUserMealServiceTest {
}