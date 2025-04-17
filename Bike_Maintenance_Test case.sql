SET SERVEROUTPUT ON;

PROMPT ==== Valid: Submit Bike for Maintenance ====
BEGIN
  bike_maintenance_mgmt_pkg.submit_bike_for_maintenance(
    p_bike_id     => 6005,  
    p_employee_id => 3001,  
    p_description => 'Gear alignment and cleaning',
    p_repair_cost => 25.75
  );
END;
/

PROMPT ==== ❌ Invalid: Submit with Non-QC Employee ====
BEGIN
  bike_maintenance_mgmt_pkg.submit_bike_for_maintenance(
    p_bike_id     => 6005,
    p_employee_id => 3009,  -- Not QC Inspector
    p_description => 'Brake check',
    p_repair_cost => 10.00
  );
END;
/

PROMPT ==== ❌ Invalid: Submit Already Maintenance Bike ====
BEGIN
  bike_maintenance_mgmt_pkg.submit_bike_for_maintenance(
    p_bike_id     => 6005,  -- Already in 'M'
    p_employee_id => 3001,
    p_description => 'Repeat submission',
    p_repair_cost => 5.00
  );
END;
/

PROMPT ==== ❌ Invalid: Submit Rented Bike ====
-- Uncomment to test if needed
-- UPDATE bike SET rental_status = 'Y' WHERE bike_id = 6006;
-- COMMIT;
BEGIN
  bike_maintenance_mgmt_pkg.submit_bike_for_maintenance(
    p_bike_id     => 6006,
    p_employee_id => 3001,
    p_description => 'Brake pad replacement',
    p_repair_cost => 18.25
  );
END;
/

PROMPT ==== ✅ Valid: Complete Maintenance ====
BEGIN
  bike_maintenance_mgmt_pkg.complete_bike_maintenance(
    p_bike_id     => 6005,
    p_dock_id     => 4002,  -- Replace with valid dock
    p_description => 'Cleaned and polished',
    p_repair_cost => 30.00,
    p_employee_id => 3001
  );
END;
/

PROMPT ==== ❌ Invalid: Complete Maintenance by Non-QC ====
BEGIN
  bike_maintenance_mgmt_pkg.complete_bike_maintenance(
    p_bike_id     => 6005,
    p_dock_id     => 4002,
    p_description => 'Non-authorized update',
    p_repair_cost => 12.00,
    p_employee_id => 3009  -- Not QC Inspector
  );
END;
/

PROMPT ==== 🔍 Final Check: Bike and Maintenance State ====
SELECT rental_status, current_location FROM bike WHERE bike_id = 6005;
SELECT bike_available, bike_capacity FROM docks WHERE dock_id = 4002;
SELECT * FROM maintenance WHERE bike_id = 6005 ORDER BY maintenance_id DESC FETCH FIRST 1 ROWS ONLY;
