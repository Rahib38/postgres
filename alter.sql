SELECT * from person2;


ALTER Table person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;
ALTER Table person2
    ALTER COLUMN user_age set NOT NULL;
ALTER Table person2
    ALTER COLUMN user_age DROP NOT NULL;
ALTER Table person2
    DROP COLUMN email ;
ALTER Table person2
    RENAME COLUMN age to user_age;
ALTER Table person2
  ALTER COLUMN user_name type VARCHAR(50);

    INSERT INTO person2 values(8,'test',25)

    ALTER Table person2
        ADD constraint unique_person2_user_age UNIQUE (user_age);
    ALTER Table person2
        DROP constraint unique_person2_user_age;