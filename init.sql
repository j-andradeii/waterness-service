-- Create the user 'waterness-network' if it doesn't exist
CREATE USER IF NOT EXISTS 'waterness-network'@'%' IDENTIFIED BY '12345';

-- Grant all privileges to the user on the waterness_db database
GRANT ALL PRIVILEGES ON waterness_db.* TO 'waterness-network'@'%';

-- Flush the privileges to ensure they are reloaded
FLUSH PRIVILEGES;