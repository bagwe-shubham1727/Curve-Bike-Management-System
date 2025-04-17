CREATE OR REPLACE PACKAGE customer_data_pkg AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  -- Get Customer Details
    PROCEDURE get_customer_details (
        p_customer_id IN customer.customer_id%TYPE
    );

  -- Insert New Customer
    PROCEDURE insert_customer (
        p_first_name     IN customer.first_name%TYPE,
        p_last_name      IN customer.last_name%TYPE,
        p_email          IN customer.email%TYPE,
        p_cust_password  IN customer.cust_password%TYPE,
        p_phone          IN customer.phone%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE,
        p_customer_id    OUT customer.customer_id%TYPE  -- new OUT param
    );

  -- Update Full Customer Record
    PROCEDURE update_customer (
        p_customer_id    IN customer.customer_id%TYPE,
        p_first_name     IN customer.first_name%TYPE,
        p_last_name      IN customer.last_name%TYPE,
        p_email          IN customer.email%TYPE,
        p_cust_password  IN customer.cust_password%TYPE,
        p_phone          IN customer.phone%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    );

  -- Update Email
    PROCEDURE update_customer_email (
        p_customer_id IN customer.customer_id%TYPE,
        p_email       IN customer.email%TYPE
    );

  -- Update Password
    PROCEDURE update_customer_password (
        p_customer_id   IN customer.customer_id%TYPE,
        p_cust_password IN customer.cust_password%TYPE
    );

  -- Update Phone
    PROCEDURE update_customer_phone (
        p_customer_id IN customer.customer_id%TYPE,
        p_phone       IN customer.phone%TYPE
    );

  -- Update Address
    PROCEDURE update_customer_address (
        p_customer_id    IN customer.customer_id%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    );

  -- Delete Customer
    PROCEDURE delete_customer (
        p_customer_id IN customer.customer_id%TYPE
    );

END customer_data_pkg;
/


CREATE OR REPLACE PACKAGE BODY customer_data_pkg AS

    PROCEDURE get_customer_details (
        p_customer_id IN customer.customer_id%TYPE
    ) IS
    BEGIN
        FOR rec IN (
            SELECT
                first_name,
                last_name,
                email,
                cust_password,
                phone,
                street_address,
                house_number,
                city,
                state_code,
                zip
            FROM
                customer
            WHERE
                customer_id = p_customer_id
        ) LOOP
            dbms_output.put_line('Name: ' || rec.first_name || ' ' || rec.last_name);
            dbms_output.put_line('Email: ' || rec.email);
            dbms_output.put_line('Phone: ' || rec.phone);
            dbms_output.put_line('Address: ' || rec.street_address || ', ' || rec.city || ', ' || rec.state_code || ' - ' || rec.zip);
        END LOOP;
    END;

    PROCEDURE insert_customer (
        p_first_name     IN customer.first_name%TYPE,
        p_last_name      IN customer.last_name%TYPE,
        p_email          IN customer.email%TYPE,
        p_cust_password  IN customer.cust_password%TYPE,
        p_phone          IN customer.phone%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE,
        p_customer_id    OUT customer.customer_id%TYPE
    ) IS
    BEGIN
        INSERT INTO customer (
            first_name,
            last_name,
            email,
            cust_password,
            phone,
            street_address,
            house_number,
            city,
            state_code,
            zip
        ) VALUES (
            p_first_name,
            p_last_name,
            p_email,
            hash_password(p_cust_password),
            p_phone,
            p_street_address,
            p_house_number,
            p_city,
            p_state_code,
            p_zip
        ) RETURNING customer_id INTO p_customer_id;

        dbms_output.put_line('Customer inserted with ID: ' || p_customer_id);
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Insert failed: ' || sqlerrm);
    END;

    PROCEDURE update_customer (
        p_customer_id    IN customer.customer_id%TYPE,
        p_first_name     IN customer.first_name%TYPE,
        p_last_name      IN customer.last_name%TYPE,
        p_email          IN customer.email%TYPE,
        p_cust_password  IN customer.cust_password%TYPE,
        p_phone          IN customer.phone%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists FROM customer WHERE customer_id = p_customer_id;
        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20010, 'Customer does not exist. Update aborted.');
        END IF;

        UPDATE customer
        SET
            first_name = p_first_name,
            last_name = p_last_name,
            email = p_email,
            cust_password = hash_password(p_cust_password),
            phone = p_phone,
            street_address = p_street_address,
            house_number = p_house_number,
            city = p_city,
            state_code = p_state_code,
            zip = p_zip
        WHERE customer_id = p_customer_id;

        dbms_output.put_line('Customer updated successfully.');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Update failed: ' || sqlerrm);
    END;

    PROCEDURE update_customer_email (
        p_customer_id IN customer.customer_id%TYPE,
        p_email       IN customer.email%TYPE
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists FROM customer WHERE customer_id = p_customer_id;
        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20011, 'Customer does not exist. Email update aborted.');
        END IF;

        UPDATE customer SET email = p_email WHERE customer_id = p_customer_id;
        dbms_output.put_line('Email updated.');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Failed to update email: ' || sqlerrm);
    END;

    PROCEDURE update_customer_password (
        p_customer_id   IN customer.customer_id%TYPE,
        p_cust_password IN customer.cust_password%TYPE
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists FROM customer WHERE customer_id = p_customer_id;
        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20012, 'Customer does not exist. Password update aborted.');
        END IF;

        UPDATE customer SET cust_password = hash_password(p_cust_password) WHERE customer_id = p_customer_id;
        dbms_output.put_line('Password updated.');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Failed to update password: ' || sqlerrm);
    END;

    PROCEDURE update_customer_phone (
        p_customer_id IN customer.customer_id%TYPE,
        p_phone       IN customer.phone%TYPE
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists FROM customer WHERE customer_id = p_customer_id;
        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20013, 'Customer does not exist. Phone update aborted.');
        END IF;

        UPDATE customer SET phone = p_phone WHERE customer_id = p_customer_id;
        dbms_output.put_line('Phone number updated.');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Failed to update phone: ' || sqlerrm);
    END;

    PROCEDURE update_customer_address (
        p_customer_id    IN customer.customer_id%TYPE,
        p_street_address IN customer.street_address%TYPE,
        p_house_number   IN customer.house_number%TYPE,
        p_city           IN customer.city%TYPE,
        p_state_code     IN customer.state_code%TYPE,
        p_zip            IN customer.zip%TYPE
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists FROM customer WHERE customer_id = p_customer_id;
        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20014, 'Customer does not exist. Address update aborted.');
        END IF;

        UPDATE customer
        SET
            street_address = p_street_address,
            house_number = p_house_number,
            city = p_city,
            state_code = p_state_code,
            zip = p_zip
        WHERE customer_id = p_customer_id;

        dbms_output.put_line('Address updated.');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Failed to update address: ' || sqlerrm);
    END;

    PROCEDURE delete_customer (
        p_customer_id IN customer.customer_id%TYPE
    ) IS
        v_exists NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists FROM customer WHERE customer_id = p_customer_id;
        IF v_exists = 0 THEN
            RAISE_APPLICATION_ERROR(-20015, 'Customer does not exist. Delete aborted.');
        END IF;

        DELETE FROM customer WHERE customer_id = p_customer_id;
        dbms_output.put_line('Customer deleted successfully.');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Failed to delete customer: ' || sqlerrm);
    END;

END customer_data_pkg;
/
